use UnitTest;
use gdal.c_GDAL;
use CTypes;

config const testParam: bool = true;
GDALAllRegister();
proc myTest(test: borrowed Test) throws {
  test.assertTrue(testParam);
}

proc tiffDumpTest(test: borrowed Test) throws {
  var a : [0..<100, 0..<100, 0..<5] real(32) = 1.0;
  for i in 0..4 {
    a[..,..,i]=i;
  }
  dumpTiff("testout", a);
  test.assertTrue(true);
}

proc dumpTiff(name, ref ut) {
  const nx = 100;
  var gtiff = GDALGetDriverByName("GTiff");
  if gtiff == nil then exit(1);
  var gdalDs : GDALDatasetH;
  var filename=name+".tiff";
  gdalDs = GDALCreate(gtiff, filename.c_str(), nx:int(32), nx:int(32), 5, GDT_Float32, nil );
  for i in 0..4 {
    var band = GDALGetRasterBand(gdalDs, i:c_int);
    GDALSetRasterNoDataValue(band, -1);
    const bandName = "data-band-" + i:string;
    GDALSetDescription(band, bandName.c_str());
    GDALRasterIO(band, GF_Write, 0, 0, nx:int(32), nx:int(32), c_ptrTo(ut[..,..,i]), nx:int(32), nx:int(32), GDT_Float32, 0, 0);
  }
  GDALClose(gdalDs);
}

UnitTest.main();
