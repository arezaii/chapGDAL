/* Documentation for gdal-mason */
module gdal {
  // Generated with c2chapel version 0.1.0

module c_GDAL {
// Header given to c2chapel:
require "gdal.h";
// require "-lgdal";

// Note: Generated with fake std headers

use CTypes;
// #define'd integer literals:
// Note: some of these may have been defined with an ifdef
extern const RASTERIO_EXTRA_ARG_CURRENT_VERSION : int;
extern const GDAL_OF_DEFAULT_BLOCK_ACCESS : int;

// End of #define'd integer literals

extern proc CPLError(eErrClass : CPLErr, err_no : CPLErrorNum, fmt : c_ptrConst(c_char), c__varargs ...) : void;

// Overload for empty varargs
extern proc CPLError(eErrClass : CPLErr,err_no : CPLErrorNum,fmt : c_ptrConst(c_char)) : void;

// Unable to generate function 'CPLErrorV' due to va_list argument

extern proc CPLEmergencyError(arg0 : c_ptrConst(c_char)) : void;

extern proc CPLErrorReset() : void;

extern proc CPLGetLastErrorNo() : CPLErrorNum;

extern proc CPLGetLastErrorType() : CPLErr;

extern proc CPLGetLastErrorMsg() : c_ptrConst(c_char);

extern proc CPLGetErrorCounter() : GUInt32;

extern proc CPLGetErrorHandlerUserData() : c_ptr(void);

extern proc CPLErrorSetState(eErrClass : CPLErr, err_no : CPLErrorNum, pszMsg : c_ptrConst(c_char)) : void;

extern proc CPLCallPreviousHandler(eErrClass : CPLErr, err_no : CPLErrorNum, pszMsg : c_ptrConst(c_char)) : void;

extern proc CPLCleanupErrorMutex() : void;

extern proc CPLLoggingErrorHandler(arg0 : CPLErr, arg1 : CPLErrorNum, arg2 : c_ptrConst(c_char)) : void;

extern proc CPLDefaultErrorHandler(arg0 : CPLErr, arg1 : CPLErrorNum, arg2 : c_ptrConst(c_char)) : void;

extern proc CPLQuietErrorHandler(arg0 : CPLErr, arg1 : CPLErrorNum, arg2 : c_ptrConst(c_char)) : void;

extern proc CPLTurnFailureIntoWarning(bOn : c_int) : void;

extern proc CPLGetErrorHandler(ref ppUserData : c_ptr(void)) : CPLErrorHandler;

extern proc CPLGetErrorHandler(ppUserData : c_ptr(c_ptr(void))) : CPLErrorHandler;

extern proc CPLSetErrorHandler(arg0 : CPLErrorHandler) : CPLErrorHandler;

extern proc CPLSetErrorHandlerEx(arg0 : CPLErrorHandler, arg1 : c_ptr(void)) : CPLErrorHandler;

extern proc CPLPushErrorHandler(arg0 : CPLErrorHandler) : void;

extern proc CPLPushErrorHandlerEx(arg0 : CPLErrorHandler, arg1 : c_ptr(void)) : void;

extern proc CPLSetCurrentErrorHandlerCatchDebug(bCatchDebug : c_int) : void;

extern proc CPLPopErrorHandler() : void;

extern proc CPLDebug(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), c__varargs ...) : void;

// Overload for empty varargs
extern proc CPLDebug(arg0 : c_ptrConst(c_char),arg1 : c_ptrConst(c_char)) : void;

extern proc CPLDebugProgress(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), c__varargs ...) : void;

// Overload for empty varargs
extern proc CPLDebugProgress(arg0 : c_ptrConst(c_char),arg1 : c_ptrConst(c_char)) : void;

extern proc _CPLAssert(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), arg2 : c_int) : void;

extern proc GDALDummyProgress(arg0 : c_double, arg1 : c_ptrConst(c_char), arg2 : c_ptr(void)) : c_int;

extern proc GDALTermProgress(arg0 : c_double, arg1 : c_ptrConst(c_char), arg2 : c_ptr(void)) : c_int;

extern proc GDALScaledProgress(arg0 : c_double, arg1 : c_ptrConst(c_char), arg2 : c_ptr(void)) : c_int;

extern proc GDALCreateScaledProgress(arg0 : c_double, arg1 : c_double, arg2 : GDALProgressFunc, arg3 : c_ptr(void)) : c_ptr(void);

extern proc GDALDestroyScaledProgress(arg0 : c_ptr(void)) : void;

extern proc VSIFOpen(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char)) : c_ptr(c_FILE);

extern proc VSIFClose(ref arg0 : c_FILE) : c_int;

extern proc VSIFClose(arg0 : c_ptr(c_FILE)) : c_int;

extern proc VSIFSeek(ref arg0 : c_FILE, arg1 : c_long, arg2 : c_int) : c_int;

extern proc VSIFSeek(arg0 : c_ptr(c_FILE), arg1 : c_long, arg2 : c_int) : c_int;

extern proc VSIFTell(ref arg0 : c_FILE) : c_long;

extern proc VSIFTell(arg0 : c_ptr(c_FILE)) : c_long;

extern proc VSIRewind(ref arg0 : c_FILE) : void;

extern proc VSIRewind(arg0 : c_ptr(c_FILE)) : void;

extern proc VSIFFlush(ref arg0 : c_FILE) : void;

extern proc VSIFFlush(arg0 : c_ptr(c_FILE)) : void;

extern proc VSIFRead(arg0 : c_ptr(void), arg1 : c_size_t, arg2 : c_size_t, ref arg3 : c_FILE) : c_size_t;

extern proc VSIFRead(arg0 : c_ptr(void), arg1 : c_size_t, arg2 : c_size_t, arg3 : c_ptr(c_FILE)) : c_size_t;

extern proc VSIFWrite(arg0 : c_ptrConst(void), arg1 : c_size_t, arg2 : c_size_t, ref arg3 : c_FILE) : c_size_t;

extern proc VSIFWrite(arg0 : c_ptrConst(void), arg1 : c_size_t, arg2 : c_size_t, arg3 : c_ptr(c_FILE)) : c_size_t;

extern proc VSIFGets(arg0 : c_ptr(c_char), arg1 : c_int, ref arg2 : c_FILE) : c_ptr(c_char);

extern proc VSIFGets(arg0 : c_ptr(c_char), arg1 : c_int, arg2 : c_ptr(c_FILE)) : c_ptr(c_char);

extern proc VSIFPuts(arg0 : c_ptrConst(c_char), ref arg1 : c_FILE) : c_int;

extern proc VSIFPuts(arg0 : c_ptrConst(c_char), arg1 : c_ptr(c_FILE)) : c_int;

extern proc VSIFPrintf(ref arg0 : c_FILE, arg1 : c_ptrConst(c_char), c__varargs ...) : c_int;

extern proc VSIFPrintf(arg0 : c_ptr(c_FILE), arg1 : c_ptrConst(c_char), c__varargs ...) : c_int;

// Overload for empty varargs
extern proc VSIFPrintf(ref arg0 : c_FILE,arg1 : c_ptrConst(c_char)) : c_int;

extern proc VSIFGetc(ref arg0 : c_FILE) : c_int;

extern proc VSIFGetc(arg0 : c_ptr(c_FILE)) : c_int;

extern proc VSIFPutc(arg0 : c_int, ref arg1 : c_FILE) : c_int;

extern proc VSIFPutc(arg0 : c_int, arg1 : c_ptr(c_FILE)) : c_int;

extern proc VSIUngetc(arg0 : c_int, ref arg1 : c_FILE) : c_int;

extern proc VSIUngetc(arg0 : c_int, arg1 : c_ptr(c_FILE)) : c_int;

extern proc VSIFEof(ref arg0 : c_FILE) : c_int;

extern proc VSIFEof(arg0 : c_ptr(c_FILE)) : c_int;

extern proc VSIStat(arg0 : c_ptrConst(c_char), ref arg1 : VSIStatBuf) : c_int;

extern proc VSIStat(arg0 : c_ptrConst(c_char), arg1 : c_ptr(VSIStatBuf)) : c_int;

extern proc VSIFOpenL(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char)) : c_ptr(VSILFILE);

extern proc VSIFOpenExL(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), arg2 : c_int) : c_ptr(VSILFILE);

extern proc VSIFOpenEx2L(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), arg2 : c_int, arg3 : CSLConstList) : c_ptr(VSILFILE);

extern proc VSIFCloseL(ref arg0 : VSILFILE) : c_int;

extern proc VSIFCloseL(arg0 : c_ptr(VSILFILE)) : c_int;

extern proc VSIFSeekL(ref arg0 : VSILFILE, arg1 : vsi_l_offset, arg2 : c_int) : c_int;

extern proc VSIFSeekL(arg0 : c_ptr(VSILFILE), arg1 : vsi_l_offset, arg2 : c_int) : c_int;

extern proc VSIFTellL(ref arg0 : VSILFILE) : vsi_l_offset;

extern proc VSIFTellL(arg0 : c_ptr(VSILFILE)) : vsi_l_offset;

extern proc VSIRewindL(ref arg0 : VSILFILE) : void;

extern proc VSIRewindL(arg0 : c_ptr(VSILFILE)) : void;

extern proc VSIFReadL(arg0 : c_ptr(void), arg1 : c_size_t, arg2 : c_size_t, ref arg3 : VSILFILE) : c_size_t;

extern proc VSIFReadL(arg0 : c_ptr(void), arg1 : c_size_t, arg2 : c_size_t, arg3 : c_ptr(VSILFILE)) : c_size_t;

extern proc VSIFReadMultiRangeL(nRanges : c_int, ref ppData : c_ptr(void), const ref panOffsets : vsi_l_offset, const ref panSizes : c_size_t, ref arg4 : VSILFILE) : c_int;

extern proc VSIFReadMultiRangeL(nRanges : c_int, ppData : c_ptr(c_ptr(void)), panOffsets : c_ptrConst(vsi_l_offset), panSizes : c_ptrConst(c_size_t), arg4 : c_ptr(VSILFILE)) : c_int;

extern proc VSIFWriteL(arg0 : c_ptrConst(void), arg1 : c_size_t, arg2 : c_size_t, ref arg3 : VSILFILE) : c_size_t;

extern proc VSIFWriteL(arg0 : c_ptrConst(void), arg1 : c_size_t, arg2 : c_size_t, arg3 : c_ptr(VSILFILE)) : c_size_t;

extern proc VSIFEofL(ref arg0 : VSILFILE) : c_int;

extern proc VSIFEofL(arg0 : c_ptr(VSILFILE)) : c_int;

extern proc VSIFTruncateL(ref arg0 : VSILFILE, arg1 : vsi_l_offset) : c_int;

extern proc VSIFTruncateL(arg0 : c_ptr(VSILFILE), arg1 : vsi_l_offset) : c_int;

extern proc VSIFFlushL(ref arg0 : VSILFILE) : c_int;

extern proc VSIFFlushL(arg0 : c_ptr(VSILFILE)) : c_int;

extern proc VSIFPrintfL(ref arg0 : VSILFILE, arg1 : c_ptrConst(c_char), c__varargs ...) : c_int;

extern proc VSIFPrintfL(arg0 : c_ptr(VSILFILE), arg1 : c_ptrConst(c_char), c__varargs ...) : c_int;

// Overload for empty varargs
extern proc VSIFPrintfL(ref arg0 : VSILFILE,arg1 : c_ptrConst(c_char)) : c_int;

extern proc VSIFPutcL(arg0 : c_int, ref arg1 : VSILFILE) : c_int;

extern proc VSIFPutcL(arg0 : c_int, arg1 : c_ptr(VSILFILE)) : c_int;

extern proc VSIFGetRangeStatusL(ref fp : VSILFILE, nStart : vsi_l_offset, nLength : vsi_l_offset) : VSIRangeStatus;

extern proc VSIFGetRangeStatusL(fp : c_ptr(VSILFILE), nStart : vsi_l_offset, nLength : vsi_l_offset) : VSIRangeStatus;

extern proc VSIIngestFile(ref fp : VSILFILE, pszFilename : c_ptrConst(c_char), ref ppabyRet : c_ptr(GByte), ref pnSize : vsi_l_offset, nMaxSize : GIntBig) : c_int;

extern proc VSIIngestFile(fp : c_ptr(VSILFILE), pszFilename : c_ptrConst(c_char), ppabyRet : c_ptr(c_ptr(GByte)), pnSize : c_ptr(vsi_l_offset), nMaxSize : GIntBig) : c_int;

extern proc VSIOverwriteFile(ref fpTarget : VSILFILE, pszSourceFilename : c_ptrConst(c_char)) : c_int;

extern proc VSIOverwriteFile(fpTarget : c_ptr(VSILFILE), pszSourceFilename : c_ptrConst(c_char)) : c_int;

extern proc VSIStatL(arg0 : c_ptrConst(c_char), ref arg1 : VSIStatBufL) : c_int;

extern proc VSIStatL(arg0 : c_ptrConst(c_char), arg1 : c_ptr(VSIStatBufL)) : c_int;

extern proc VSIStatExL(pszFilename : c_ptrConst(c_char), ref psStatBuf : VSIStatBufL, nFlags : c_int) : c_int;

extern proc VSIStatExL(pszFilename : c_ptrConst(c_char), psStatBuf : c_ptr(VSIStatBufL), nFlags : c_int) : c_int;

extern proc VSIIsCaseSensitiveFS(pszFilename : c_ptrConst(c_char)) : c_int;

extern proc VSISupportsSparseFiles(pszPath : c_ptrConst(c_char)) : c_int;

extern proc VSIIsLocal(pszPath : c_ptrConst(c_char)) : bool;

extern proc VSIGetCanonicalFilename(pszPath : c_ptrConst(c_char)) : c_ptr(c_char);

extern proc VSISupportsSequentialWrite(pszPath : c_ptrConst(c_char), bAllowLocalTempFile : bool) : bool;

extern proc VSISupportsRandomWrite(pszPath : c_ptrConst(c_char), bAllowLocalTempFile : bool) : bool;

extern proc VSIHasOptimizedReadMultiRange(pszPath : c_ptrConst(c_char)) : c_int;

extern proc VSIGetActualURL(pszFilename : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc VSIGetSignedURL(pszFilename : c_ptrConst(c_char), papszOptions : CSLConstList) : c_ptr(c_char);

extern proc VSIGetFileSystemOptions(pszFilename : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc VSIGetFileSystemsPrefixes() : c_ptr(c_ptr(c_char));

extern proc VSIFGetNativeFileDescriptorL(ref arg0 : VSILFILE) : c_ptr(void);

extern proc VSIFGetNativeFileDescriptorL(arg0 : c_ptr(VSILFILE)) : c_ptr(void);

extern proc VSIGetFileMetadata(pszFilename : c_ptrConst(c_char), pszDomain : c_ptrConst(c_char), papszOptions : CSLConstList) : c_ptr(c_ptr(c_char));

extern proc VSISetFileMetadata(pszFilename : c_ptrConst(c_char), papszMetadata : CSLConstList, pszDomain : c_ptrConst(c_char), papszOptions : CSLConstList) : c_int;

extern proc VSISetPathSpecificOption(pszPathPrefix : c_ptrConst(c_char), pszKey : c_ptrConst(c_char), pszValue : c_ptrConst(c_char)) : void;

extern proc VSIClearPathSpecificOptions(pszPathPrefix : c_ptrConst(c_char)) : void;

extern proc VSIGetPathSpecificOption(pszPath : c_ptrConst(c_char), pszKey : c_ptrConst(c_char), pszDefault : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc VSISetCredential(pszPathPrefix : c_ptrConst(c_char), pszKey : c_ptrConst(c_char), pszValue : c_ptrConst(c_char)) : void;

extern proc VSIClearCredentials(pszPathPrefix : c_ptrConst(c_char)) : void;

extern proc VSIGetCredential(pszPath : c_ptrConst(c_char), pszKey : c_ptrConst(c_char), pszDefault : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc VSICalloc(arg0 : c_size_t, arg1 : c_size_t) : c_ptr(void);

extern proc VSIMalloc(arg0 : c_size_t) : c_ptr(void);

extern proc VSIFree(arg0 : c_ptr(void)) : void;

extern proc VSIRealloc(arg0 : c_ptr(void), arg1 : c_size_t) : c_ptr(void);

extern proc VSIStrdup(arg0 : c_ptrConst(c_char)) : c_ptr(c_char);

extern proc VSIMallocAligned(nAlignment : c_size_t, nSize : c_size_t) : c_ptr(void);

extern proc VSIMallocAlignedAuto(nSize : c_size_t) : c_ptr(void);

extern proc VSIFreeAligned(ptr : c_ptr(void)) : void;

extern proc VSIMallocAlignedAutoVerbose(nSize : c_size_t, pszFile : c_ptrConst(c_char), nLine : c_int) : c_ptr(void);

extern proc VSIMalloc2(nSize1 : c_size_t, nSize2 : c_size_t) : c_ptr(void);

extern proc VSIMalloc3(nSize1 : c_size_t, nSize2 : c_size_t, nSize3 : c_size_t) : c_ptr(void);

extern proc VSIMallocVerbose(nSize : c_size_t, pszFile : c_ptrConst(c_char), nLine : c_int) : c_ptr(void);

extern proc VSIMalloc2Verbose(nSize1 : c_size_t, nSize2 : c_size_t, pszFile : c_ptrConst(c_char), nLine : c_int) : c_ptr(void);

extern proc VSIMalloc3Verbose(nSize1 : c_size_t, nSize2 : c_size_t, nSize3 : c_size_t, pszFile : c_ptrConst(c_char), nLine : c_int) : c_ptr(void);

extern proc VSICallocVerbose(nCount : c_size_t, nSize : c_size_t, pszFile : c_ptrConst(c_char), nLine : c_int) : c_ptr(void);

extern proc VSIReallocVerbose(pOldPtr : c_ptr(void), nNewSize : c_size_t, pszFile : c_ptrConst(c_char), nLine : c_int) : c_ptr(void);

extern proc VSIStrdupVerbose(pszStr : c_ptrConst(c_char), pszFile : c_ptrConst(c_char), nLine : c_int) : c_ptr(c_char);

extern proc CPLGetPhysicalRAM() : GIntBig;

extern proc CPLGetUsablePhysicalRAM() : GIntBig;

extern proc VSIReadDir(arg0 : c_ptrConst(c_char)) : c_ptr(c_ptr(c_char));

extern proc VSIReadDirRecursive(pszPath : c_ptrConst(c_char)) : c_ptr(c_ptr(c_char));

extern proc VSIReadDirEx(pszPath : c_ptrConst(c_char), nMaxFiles : c_int) : c_ptr(c_ptr(c_char));

extern proc VSISiblingFiles(pszPath : c_ptrConst(c_char)) : c_ptr(c_ptr(c_char));

extern proc VSIGetDirectorySeparator(pszPath : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc VSIOpenDir(pszPath : c_ptrConst(c_char), nRecurseDepth : c_int, const ref papszOptions : c_ptrConst(c_char)) : c_ptr(VSIDIR);

extern proc VSIOpenDir(pszPath : c_ptrConst(c_char), nRecurseDepth : c_int, papszOptions : c_ptrConst(c_ptrConst(c_char))) : c_ptr(VSIDIR);

extern "struct VSIDIREntry" record VSIDIREntry {
  var pszName : c_ptr(c_char);
  var nMode : c_int;
  var nSize : vsi_l_offset;
  var nMTime : GIntBig;
  var bModeKnown : c_char;
  var bSizeKnown : c_char;
  var bMTimeKnown : c_char;
  var papszExtra : c_ptr(c_ptr(c_char));
}

extern proc VSIGetNextDirEntry(ref dir : VSIDIR) : c_ptrConst(VSIDIREntry);

extern proc VSIGetNextDirEntry(dir : c_ptr(VSIDIR)) : c_ptrConst(VSIDIREntry);

extern proc VSICloseDir(ref dir : VSIDIR) : void;

extern proc VSICloseDir(dir : c_ptr(VSIDIR)) : void;

extern proc VSIMkdir(pszPathname : c_ptrConst(c_char), mode : c_long) : c_int;

extern proc VSIMkdirRecursive(pszPathname : c_ptrConst(c_char), mode : c_long) : c_int;

extern proc VSIRmdir(pszDirname : c_ptrConst(c_char)) : c_int;

extern proc VSIRmdirRecursive(pszDirname : c_ptrConst(c_char)) : c_int;

extern proc VSIUnlink(pszFilename : c_ptrConst(c_char)) : c_int;

extern proc VSIUnlinkBatch(papszFiles : CSLConstList) : c_ptr(c_int);

extern proc VSIRename(oldpath : c_ptrConst(c_char), newpath : c_ptrConst(c_char)) : c_int;

extern proc VSICopyFile(pszSource : c_ptrConst(c_char), pszTarget : c_ptrConst(c_char), ref fpSource : VSILFILE, nSourceSize : vsi_l_offset, const ref papszOptions : c_ptrConst(c_char), pProgressFunc : GDALProgressFunc, pProgressData : c_ptr(void)) : c_int;

extern proc VSICopyFile(pszSource : c_ptrConst(c_char), pszTarget : c_ptrConst(c_char), fpSource : c_ptr(VSILFILE), nSourceSize : vsi_l_offset, papszOptions : c_ptrConst(c_ptrConst(c_char)), pProgressFunc : GDALProgressFunc, pProgressData : c_ptr(void)) : c_int;

extern proc VSISync(pszSource : c_ptrConst(c_char), pszTarget : c_ptrConst(c_char), const ref papszOptions : c_ptrConst(c_char), pProgressFunc : GDALProgressFunc, pProgressData : c_ptr(void), ref ppapszOutputs : c_ptr(c_ptr(c_char))) : c_int;

extern proc VSISync(pszSource : c_ptrConst(c_char), pszTarget : c_ptrConst(c_char), papszOptions : c_ptrConst(c_ptrConst(c_char)), pProgressFunc : GDALProgressFunc, pProgressData : c_ptr(void), ppapszOutputs : c_ptr(c_ptr(c_ptr(c_char)))) : c_int;

extern proc VSIAbortPendingUploads(pszFilename : c_ptrConst(c_char)) : c_int;

extern proc VSIStrerror(arg0 : c_int) : c_ptr(c_char);

extern proc VSIGetDiskFreeSpace(pszDirname : c_ptrConst(c_char)) : GIntBig;

extern proc VSINetworkStatsReset() : void;

extern proc VSINetworkStatsGetAsSerializedJSON(ref papszOptions : c_ptr(c_char)) : c_ptr(c_char);

extern proc VSINetworkStatsGetAsSerializedJSON(papszOptions : c_ptr(c_ptr(c_char))) : c_ptr(c_char);

extern proc VSIInstallMemFileHandler() : void;

extern proc VSIInstallLargeFileHandler() : void;

extern proc VSIInstallSubFileHandler() : void;

extern proc VSIInstallCurlFileHandler() : void;

extern proc VSICurlClearCache() : void;

extern proc VSICurlPartialClearCache(pszFilenamePrefix : c_ptrConst(c_char)) : void;

extern proc VSIInstallCurlStreamingFileHandler() : void;

extern proc VSIInstallS3FileHandler() : void;

extern proc VSIInstallS3StreamingFileHandler() : void;

extern proc VSIInstallGSFileHandler() : void;

extern proc VSIInstallGSStreamingFileHandler() : void;

extern proc VSIInstallAzureFileHandler() : void;

extern proc VSIInstallAzureStreamingFileHandler() : void;

extern proc VSIInstallADLSFileHandler() : void;

extern proc VSIInstallOSSFileHandler() : void;

extern proc VSIInstallOSSStreamingFileHandler() : void;

extern proc VSIInstallSwiftFileHandler() : void;

extern proc VSIInstallSwiftStreamingFileHandler() : void;

extern proc VSIInstall7zFileHandler() : void;

extern proc VSIInstallRarFileHandler() : void;

extern proc VSIInstallGZipFileHandler() : void;

extern proc VSIInstallZipFileHandler() : void;

extern proc VSIInstallStdinHandler() : void;

extern proc VSIInstallHdfsHandler() : void;

extern proc VSIInstallWebHdfsHandler() : void;

extern proc VSIInstallStdoutHandler() : void;

extern proc VSIInstallSparseFileHandler() : void;

extern proc VSIInstallTarFileHandler() : void;

extern proc VSIInstallCachedFileHandler() : void;

extern proc VSIInstallCryptFileHandler() : void;

extern proc VSISetCryptKey(const ref pabyKey : GByte, nKeySize : c_int) : void;

extern proc VSISetCryptKey(pabyKey : c_ptrConst(GByte), nKeySize : c_int) : void;

extern proc VSICleanupFileManager() : void;

extern proc VSIDuplicateFileSystemHandler(pszSourceFSName : c_ptrConst(c_char), pszNewFSName : c_ptrConst(c_char)) : bool;

extern proc VSIFileFromMemBuffer(pszFilename : c_ptrConst(c_char), ref pabyData : GByte, nDataLength : vsi_l_offset, bTakeOwnership : c_int) : c_ptr(VSILFILE);

extern proc VSIFileFromMemBuffer(pszFilename : c_ptrConst(c_char), pabyData : c_ptr(GByte), nDataLength : vsi_l_offset, bTakeOwnership : c_int) : c_ptr(VSILFILE);

extern proc VSIGetMemFileBuffer(pszFilename : c_ptrConst(c_char), ref pnDataLength : vsi_l_offset, bUnlinkAndSeize : c_int) : c_ptr(GByte);

extern proc VSIGetMemFileBuffer(pszFilename : c_ptrConst(c_char), pnDataLength : c_ptr(vsi_l_offset), bUnlinkAndSeize : c_int) : c_ptr(GByte);

extern proc VSIStdoutSetRedirection(pFct : VSIWriteFunction, ref stream : c_FILE) : void;

extern proc VSIStdoutSetRedirection(pFct : VSIWriteFunction, stream : c_ptr(c_FILE)) : void;

extern proc VSIAllocFilesystemPluginCallbacksStruct() : c_ptr(VSIFilesystemPluginCallbacksStruct);

extern proc VSIFreeFilesystemPluginCallbacksStruct(ref poCb : VSIFilesystemPluginCallbacksStruct) : void;

extern proc VSIFreeFilesystemPluginCallbacksStruct(poCb : c_ptr(VSIFilesystemPluginCallbacksStruct)) : void;

extern proc VSIInstallPluginHandler(pszPrefix : c_ptrConst(c_char), const ref poCb : VSIFilesystemPluginCallbacksStruct) : c_int;

extern proc VSIInstallPluginHandler(pszPrefix : c_ptrConst(c_char), poCb : c_ptrConst(VSIFilesystemPluginCallbacksStruct)) : c_int;

extern proc VSIRemovePluginHandler(pszPrefix : c_ptrConst(c_char)) : c_int;

// extern proc VSITime(ref arg0 : c_ulong) : c_ulong;

// extern proc VSITime(arg0 : c_ptr(c_ulong)) : c_ulong;

// extern proc VSICTime(arg0 : c_ulong) : c_ptrConst(c_char);

// extern proc VSIGMTime(const ref pnTime : time_t, ref poBrokenTime : tm) : c_ptr(tm);

// extern proc VSIGMTime(pnTime : c_ptrConst(time_t), poBrokenTime : c_ptr(tm)) : c_ptr(tm);

// extern proc VSILocalTime(const ref pnTime : time_t, ref poBrokenTime : tm) : c_ptr(tm);

// extern proc VSILocalTime(pnTime : c_ptrConst(time_t), poBrokenTime : c_ptr(tm)) : c_ptr(tm);

extern proc CPLGetPageSize() : c_size_t;

extern proc CPLVirtualMemNew(nSize : c_size_t, nCacheSize : c_size_t, nPageSizeHint : c_size_t, bSingleThreadUsage : c_int, eAccessMode : CPLVirtualMemAccessMode, pfnCachePage : CPLVirtualMemCachePageCbk, pfnUnCachePage : CPLVirtualMemUnCachePageCbk, pfnFreeUserData : CPLVirtualMemFreeUserData, pCbkUserData : c_ptr(void)) : c_ptr(CPLVirtualMem);

extern proc CPLIsVirtualMemFileMapAvailable() : c_int;

extern proc CPLVirtualMemFileMapNew(ref fp : VSILFILE, nOffset : vsi_l_offset, nLength : vsi_l_offset, eAccessMode : CPLVirtualMemAccessMode, pfnFreeUserData : CPLVirtualMemFreeUserData, pCbkUserData : c_ptr(void)) : c_ptr(CPLVirtualMem);

extern proc CPLVirtualMemFileMapNew(fp : c_ptr(VSILFILE), nOffset : vsi_l_offset, nLength : vsi_l_offset, eAccessMode : CPLVirtualMemAccessMode, pfnFreeUserData : CPLVirtualMemFreeUserData, pCbkUserData : c_ptr(void)) : c_ptr(CPLVirtualMem);

extern proc CPLVirtualMemDerivedNew(ref pVMemBase : CPLVirtualMem, nOffset : vsi_l_offset, nSize : vsi_l_offset, pfnFreeUserData : CPLVirtualMemFreeUserData, pCbkUserData : c_ptr(void)) : c_ptr(CPLVirtualMem);

extern proc CPLVirtualMemDerivedNew(pVMemBase : c_ptr(CPLVirtualMem), nOffset : vsi_l_offset, nSize : vsi_l_offset, pfnFreeUserData : CPLVirtualMemFreeUserData, pCbkUserData : c_ptr(void)) : c_ptr(CPLVirtualMem);

extern proc CPLVirtualMemFree(ref ctxt : CPLVirtualMem) : void;

extern proc CPLVirtualMemFree(ctxt : c_ptr(CPLVirtualMem)) : void;

extern proc CPLVirtualMemGetAddr(ref ctxt : CPLVirtualMem) : c_ptr(void);

extern proc CPLVirtualMemGetAddr(ctxt : c_ptr(CPLVirtualMem)) : c_ptr(void);

extern proc CPLVirtualMemGetSize(ref ctxt : CPLVirtualMem) : c_size_t;

extern proc CPLVirtualMemGetSize(ctxt : c_ptr(CPLVirtualMem)) : c_size_t;

extern proc CPLVirtualMemIsFileMapping(ref ctxt : CPLVirtualMem) : c_int;

extern proc CPLVirtualMemIsFileMapping(ctxt : c_ptr(CPLVirtualMem)) : c_int;

extern proc CPLVirtualMemGetAccessMode(ref ctxt : CPLVirtualMem) : CPLVirtualMemAccessMode;

extern proc CPLVirtualMemGetAccessMode(ctxt : c_ptr(CPLVirtualMem)) : CPLVirtualMemAccessMode;

extern proc CPLVirtualMemGetPageSize(ref ctxt : CPLVirtualMem) : c_size_t;

extern proc CPLVirtualMemGetPageSize(ctxt : c_ptr(CPLVirtualMem)) : c_size_t;

extern proc CPLVirtualMemIsAccessThreadSafe(ref ctxt : CPLVirtualMem) : c_int;

extern proc CPLVirtualMemIsAccessThreadSafe(ctxt : c_ptr(CPLVirtualMem)) : c_int;

extern proc CPLVirtualMemDeclareThread(ref ctxt : CPLVirtualMem) : void;

extern proc CPLVirtualMemDeclareThread(ctxt : c_ptr(CPLVirtualMem)) : void;

extern proc CPLVirtualMemUnDeclareThread(ref ctxt : CPLVirtualMem) : void;

extern proc CPLVirtualMemUnDeclareThread(ctxt : c_ptr(CPLVirtualMem)) : void;

extern proc CPLVirtualMemPin(ref ctxt : CPLVirtualMem, pAddr : c_ptr(void), nSize : c_size_t, bWriteOp : c_int) : void;

extern proc CPLVirtualMemPin(ctxt : c_ptr(CPLVirtualMem), pAddr : c_ptr(void), nSize : c_size_t, bWriteOp : c_int) : void;

extern proc CPLVirtualMemManagerTerminate() : void;

extern "struct CPLXMLNode" record CPLXMLNode {
  var eType : CPLXMLNodeType;
  var pszValue : c_ptr(c_char);
  var psNext : c_ptr(CPLXMLNode);
  var psChild : c_ptr(CPLXMLNode);
}

extern proc CPLParseXMLString(arg0 : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLDestroyXMLNode(ref arg0 : CPLXMLNode) : void;

extern proc CPLDestroyXMLNode(arg0 : c_ptr(CPLXMLNode)) : void;

extern proc CPLGetXMLNode(ref poRoot : CPLXMLNode, pszPath : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLGetXMLNode(poRoot : c_ptr(CPLXMLNode), pszPath : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLSearchXMLNode(ref poRoot : CPLXMLNode, pszTarget : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLSearchXMLNode(poRoot : c_ptr(CPLXMLNode), pszTarget : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLGetXMLValue(const ref poRoot : CPLXMLNode, pszPath : c_ptrConst(c_char), pszDefault : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc CPLGetXMLValue(poRoot : c_ptrConst(CPLXMLNode), pszPath : c_ptrConst(c_char), pszDefault : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc CPLCreateXMLNode(ref poParent : CPLXMLNode, eType : CPLXMLNodeType, pszText : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLCreateXMLNode(poParent : c_ptr(CPLXMLNode), eType : CPLXMLNodeType, pszText : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLSerializeXMLTree(const ref psNode : CPLXMLNode) : c_ptr(c_char);

extern proc CPLSerializeXMLTree(psNode : c_ptrConst(CPLXMLNode)) : c_ptr(c_char);

extern proc CPLAddXMLChild(ref psParent : CPLXMLNode, ref psChild : CPLXMLNode) : void;

extern proc CPLAddXMLChild(psParent : c_ptr(CPLXMLNode), psChild : c_ptr(CPLXMLNode)) : void;

extern proc CPLRemoveXMLChild(ref psParent : CPLXMLNode, ref psChild : CPLXMLNode) : c_int;

extern proc CPLRemoveXMLChild(psParent : c_ptr(CPLXMLNode), psChild : c_ptr(CPLXMLNode)) : c_int;

extern proc CPLAddXMLSibling(ref psOlderSibling : CPLXMLNode, ref psNewSibling : CPLXMLNode) : void;

extern proc CPLAddXMLSibling(psOlderSibling : c_ptr(CPLXMLNode), psNewSibling : c_ptr(CPLXMLNode)) : void;

extern proc CPLCreateXMLElementAndValue(ref psParent : CPLXMLNode, pszName : c_ptrConst(c_char), pszValue : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLCreateXMLElementAndValue(psParent : c_ptr(CPLXMLNode), pszName : c_ptrConst(c_char), pszValue : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLAddXMLAttributeAndValue(ref psParent : CPLXMLNode, pszName : c_ptrConst(c_char), pszValue : c_ptrConst(c_char)) : void;

extern proc CPLAddXMLAttributeAndValue(psParent : c_ptr(CPLXMLNode), pszName : c_ptrConst(c_char), pszValue : c_ptrConst(c_char)) : void;

extern proc CPLCloneXMLTree(const ref psTree : CPLXMLNode) : c_ptr(CPLXMLNode);

extern proc CPLCloneXMLTree(psTree : c_ptrConst(CPLXMLNode)) : c_ptr(CPLXMLNode);

extern proc CPLSetXMLValue(ref psRoot : CPLXMLNode, pszPath : c_ptrConst(c_char), pszValue : c_ptrConst(c_char)) : c_int;

extern proc CPLSetXMLValue(psRoot : c_ptr(CPLXMLNode), pszPath : c_ptrConst(c_char), pszValue : c_ptrConst(c_char)) : c_int;

extern proc CPLStripXMLNamespace(ref psRoot : CPLXMLNode, pszNameSpace : c_ptrConst(c_char), bRecurse : c_int) : void;

extern proc CPLStripXMLNamespace(psRoot : c_ptr(CPLXMLNode), pszNameSpace : c_ptrConst(c_char), bRecurse : c_int) : void;

extern proc CPLCleanXMLElementName(arg0 : c_ptr(c_char)) : void;

extern proc CPLParseXMLFile(pszFilename : c_ptrConst(c_char)) : c_ptr(CPLXMLNode);

extern proc CPLSerializeXMLTreeToFile(const ref psTree : CPLXMLNode, pszFilename : c_ptrConst(c_char)) : c_int;

extern proc CPLSerializeXMLTreeToFile(psTree : c_ptrConst(CPLXMLNode), pszFilename : c_ptrConst(c_char)) : c_int;

extern proc CPLXMLNodeGetRAMUsageEstimate(const ref psNode : CPLXMLNode) : c_size_t;

extern proc CPLXMLNodeGetRAMUsageEstimate(psNode : c_ptrConst(CPLXMLNode)) : c_size_t;

extern proc OGRMalloc(arg0 : c_size_t) : c_ptr(void);

extern proc OGRCalloc(arg0 : c_size_t, arg1 : c_size_t) : c_ptr(void);

extern proc OGRRealloc(arg0 : c_ptr(void), arg1 : c_size_t) : c_ptr(void);

extern proc OGRStrdup(arg0 : c_ptrConst(c_char)) : c_ptr(c_char);

extern proc OGRFree(arg0 : c_ptr(void)) : void;

extern proc OGRGeometryTypeToName(eType : OGRwkbGeometryType) : c_ptrConst(c_char);

extern proc OGRMergeGeometryTypes(eMain : OGRwkbGeometryType, eExtra : OGRwkbGeometryType) : OGRwkbGeometryType;

extern proc OGRMergeGeometryTypesEx(eMain : OGRwkbGeometryType, eExtra : OGRwkbGeometryType, bAllowPromotingToCurves : c_int) : OGRwkbGeometryType;

extern proc OGR_GT_Flatten(eType : OGRwkbGeometryType) : OGRwkbGeometryType;

extern proc OGR_GT_SetZ(eType : OGRwkbGeometryType) : OGRwkbGeometryType;

extern proc OGR_GT_SetM(eType : OGRwkbGeometryType) : OGRwkbGeometryType;

extern proc OGR_GT_SetModifier(eType : OGRwkbGeometryType, bSetZ : c_int, bSetM : c_int) : OGRwkbGeometryType;

extern proc OGR_GT_HasZ(eType : OGRwkbGeometryType) : c_int;

extern proc OGR_GT_HasM(eType : OGRwkbGeometryType) : c_int;

extern proc OGR_GT_IsSubClassOf(eType : OGRwkbGeometryType, eSuperType : OGRwkbGeometryType) : c_int;

extern proc OGR_GT_IsCurve(arg0 : OGRwkbGeometryType) : c_int;

extern proc OGR_GT_IsSurface(arg0 : OGRwkbGeometryType) : c_int;

extern proc OGR_GT_IsNonLinear(arg0 : OGRwkbGeometryType) : c_int;

extern proc OGR_GT_GetCollection(eType : OGRwkbGeometryType) : OGRwkbGeometryType;

extern proc OGR_GT_GetCurve(eType : OGRwkbGeometryType) : OGRwkbGeometryType;

extern proc OGR_GT_GetLinear(eType : OGRwkbGeometryType) : OGRwkbGeometryType;

extern proc OGRParseDate(pszInput : c_ptrConst(c_char), ref psOutput : OGRField, nOptions : c_int) : c_int;

extern proc OGRParseDate(pszInput : c_ptrConst(c_char), psOutput : c_ptr(OGRField), nOptions : c_int) : c_int;

extern proc GDALVersionInfo(arg0 : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc GDALCheckVersion(nVersionMajor : c_int, nVersionMinor : c_int, pszCallingComponentName : c_ptrConst(c_char)) : c_int;

extern proc OGRGetGEOSVersion(ref pnMajor : c_int, ref pnMinor : c_int, ref pnPatch : c_int) : bool;

extern proc OGRGetGEOSVersion(pnMajor : c_ptr(c_int), pnMinor : c_ptr(c_int), pnPatch : c_ptr(c_int)) : bool;


extern proc OGRGeomCoordinatePrecisionCreate() : OGRGeomCoordinatePrecisionH;

extern proc OGRGeomCoordinatePrecisionDestroy(arg0 : OGRGeomCoordinatePrecisionH) : void;

extern proc OGRGeomCoordinatePrecisionGetXYResolution(arg0 : OGRGeomCoordinatePrecisionH) : c_double;

extern proc OGRGeomCoordinatePrecisionGetZResolution(arg0 : OGRGeomCoordinatePrecisionH) : c_double;

extern proc OGRGeomCoordinatePrecisionGetMResolution(arg0 : OGRGeomCoordinatePrecisionH) : c_double;

extern proc OGRGeomCoordinatePrecisionGetFormats(arg0 : OGRGeomCoordinatePrecisionH) : c_ptr(c_ptr(c_char));

extern proc OGRGeomCoordinatePrecisionGetFormatSpecificOptions(arg0 : OGRGeomCoordinatePrecisionH, pszFormatName : c_ptrConst(c_char)) : CSLConstList;

extern proc OGRGeomCoordinatePrecisionSet(arg0 : OGRGeomCoordinatePrecisionH, dfXYResolution : c_double, dfZResolution : c_double, dfMResolution : c_double) : void;

extern proc OGRGeomCoordinatePrecisionSetFromMeter(arg0 : OGRGeomCoordinatePrecisionH, hSRS : OGRSpatialReferenceH, dfXYMeterResolution : c_double, dfZMeterResolution : c_double, dfMResolution : c_double) : void;

extern proc OGRGeomCoordinatePrecisionSetFormatSpecificOptions(arg0 : OGRGeomCoordinatePrecisionH, pszFormatName : c_ptrConst(c_char), papszOptions : CSLConstList) : void;

extern proc OGR_G_CreateFromWkb(arg0 : c_ptrConst(void), arg1 : OGRSpatialReferenceH, ref arg2 : OGRGeometryH, arg3 : c_int) : OGRErr;

extern proc OGR_G_CreateFromWkb(arg0 : c_ptrConst(void), arg1 : OGRSpatialReferenceH, arg2 : c_ptr(OGRGeometryH), arg3 : c_int) : OGRErr;

extern proc OGR_G_CreateFromWkbEx(arg0 : c_ptrConst(void), arg1 : OGRSpatialReferenceH, ref arg2 : OGRGeometryH, arg3 : c_size_t) : OGRErr;

extern proc OGR_G_CreateFromWkbEx(arg0 : c_ptrConst(void), arg1 : OGRSpatialReferenceH, arg2 : c_ptr(OGRGeometryH), arg3 : c_size_t) : OGRErr;

extern proc OGR_G_CreateFromWkt(ref arg0 : c_ptr(c_char), arg1 : OGRSpatialReferenceH, ref arg2 : OGRGeometryH) : OGRErr;

extern proc OGR_G_CreateFromWkt(arg0 : c_ptr(c_ptr(c_char)), arg1 : OGRSpatialReferenceH, arg2 : c_ptr(OGRGeometryH)) : OGRErr;

extern proc OGR_G_CreateFromFgf(arg0 : c_ptrConst(void), arg1 : OGRSpatialReferenceH, ref arg2 : OGRGeometryH, arg3 : c_int, ref arg4 : c_int) : OGRErr;

extern proc OGR_G_CreateFromFgf(arg0 : c_ptrConst(void), arg1 : OGRSpatialReferenceH, arg2 : c_ptr(OGRGeometryH), arg3 : c_int, arg4 : c_ptr(c_int)) : OGRErr;

extern proc OGR_G_DestroyGeometry(arg0 : OGRGeometryH) : void;

extern proc OGR_G_CreateGeometry(arg0 : OGRwkbGeometryType) : OGRGeometryH;

extern proc OGR_G_ApproximateArcAngles(dfCenterX : c_double, dfCenterY : c_double, dfZ : c_double, dfPrimaryRadius : c_double, dfSecondaryAxis : c_double, dfRotation : c_double, dfStartAngle : c_double, dfEndAngle : c_double, dfMaxAngleStepSizeDegrees : c_double) : OGRGeometryH;

extern proc OGR_G_ForceToPolygon(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_ForceToLineString(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_ForceToMultiPolygon(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_ForceToMultiPoint(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_ForceToMultiLineString(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_ForceTo(hGeom : OGRGeometryH, eTargetType : OGRwkbGeometryType, ref papszOptions : c_ptr(c_char)) : OGRGeometryH;

extern proc OGR_G_ForceTo(hGeom : OGRGeometryH, eTargetType : OGRwkbGeometryType, papszOptions : c_ptr(c_ptr(c_char))) : OGRGeometryH;

extern proc OGR_G_RemoveLowerDimensionSubGeoms(hGeom : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_GetDimension(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_GetCoordinateDimension(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_CoordinateDimension(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_SetCoordinateDimension(arg0 : OGRGeometryH, arg1 : c_int) : void;

extern proc OGR_G_Is3D(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_IsMeasured(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_Set3D(arg0 : OGRGeometryH, arg1 : c_int) : void;

extern proc OGR_G_SetMeasured(arg0 : OGRGeometryH, arg1 : c_int) : void;

extern proc OGR_G_Clone(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_GetEnvelope(arg0 : OGRGeometryH, ref arg1 : OGREnvelope) : void;

extern proc OGR_G_GetEnvelope(arg0 : OGRGeometryH, arg1 : c_ptr(OGREnvelope)) : void;

extern proc OGR_G_GetEnvelope3D(arg0 : OGRGeometryH, ref arg1 : OGREnvelope3D) : void;

extern proc OGR_G_GetEnvelope3D(arg0 : OGRGeometryH, arg1 : c_ptr(OGREnvelope3D)) : void;

extern proc OGR_G_ImportFromWkb(arg0 : OGRGeometryH, arg1 : c_ptrConst(void), arg2 : c_int) : OGRErr;

extern proc OGR_G_ExportToWkb(arg0 : OGRGeometryH, arg1 : OGRwkbByteOrder, arg2 : c_ptr(c_uchar)) : OGRErr;

extern proc OGR_G_ExportToIsoWkb(arg0 : OGRGeometryH, arg1 : OGRwkbByteOrder, arg2 : c_ptr(c_uchar)) : OGRErr;

extern proc OGRwkbExportOptionsCreate() : c_ptr(OGRwkbExportOptions);

extern proc OGRwkbExportOptionsDestroy(ref arg0 : OGRwkbExportOptions) : void;

extern proc OGRwkbExportOptionsDestroy(arg0 : c_ptr(OGRwkbExportOptions)) : void;

extern proc OGRwkbExportOptionsSetByteOrder(ref arg0 : OGRwkbExportOptions, arg1 : OGRwkbByteOrder) : void;

extern proc OGRwkbExportOptionsSetByteOrder(arg0 : c_ptr(OGRwkbExportOptions), arg1 : OGRwkbByteOrder) : void;

extern proc OGRwkbExportOptionsSetVariant(ref arg0 : OGRwkbExportOptions, arg1 : OGRwkbVariant) : void;

extern proc OGRwkbExportOptionsSetVariant(arg0 : c_ptr(OGRwkbExportOptions), arg1 : OGRwkbVariant) : void;

extern proc OGRwkbExportOptionsSetPrecision(ref arg0 : OGRwkbExportOptions, arg1 : OGRGeomCoordinatePrecisionH) : void;

extern proc OGRwkbExportOptionsSetPrecision(arg0 : c_ptr(OGRwkbExportOptions), arg1 : OGRGeomCoordinatePrecisionH) : void;

extern proc OGR_G_ExportToWkbEx(arg0 : OGRGeometryH, arg1 : c_ptr(c_uchar), const ref arg2 : OGRwkbExportOptions) : OGRErr;

extern proc OGR_G_ExportToWkbEx(arg0 : OGRGeometryH, arg1 : c_ptr(c_uchar), arg2 : c_ptrConst(OGRwkbExportOptions)) : OGRErr;

extern proc OGR_G_WkbSize(hGeom : OGRGeometryH) : c_int;

extern proc OGR_G_WkbSizeEx(hGeom : OGRGeometryH) : c_size_t;

extern proc OGR_G_ImportFromWkt(arg0 : OGRGeometryH, ref arg1 : c_ptr(c_char)) : OGRErr;

extern proc OGR_G_ImportFromWkt(arg0 : OGRGeometryH, arg1 : c_ptr(c_ptr(c_char))) : OGRErr;

extern proc OGR_G_ExportToWkt(arg0 : OGRGeometryH, ref arg1 : c_ptr(c_char)) : OGRErr;

extern proc OGR_G_ExportToWkt(arg0 : OGRGeometryH, arg1 : c_ptr(c_ptr(c_char))) : OGRErr;

extern proc OGR_G_ExportToIsoWkt(arg0 : OGRGeometryH, ref arg1 : c_ptr(c_char)) : OGRErr;

extern proc OGR_G_ExportToIsoWkt(arg0 : OGRGeometryH, arg1 : c_ptr(c_ptr(c_char))) : OGRErr;

extern proc OGR_G_GetGeometryType(arg0 : OGRGeometryH) : OGRwkbGeometryType;

extern proc OGR_G_GetGeometryName(arg0 : OGRGeometryH) : c_ptrConst(c_char);

extern proc OGR_G_DumpReadable(arg0 : OGRGeometryH, ref arg1 : c_FILE, arg2 : c_ptrConst(c_char)) : void;

extern proc OGR_G_DumpReadable(arg0 : OGRGeometryH, arg1 : c_ptr(c_FILE), arg2 : c_ptrConst(c_char)) : void;

extern proc OGR_G_FlattenTo2D(arg0 : OGRGeometryH) : void;

extern proc OGR_G_CloseRings(arg0 : OGRGeometryH) : void;

extern proc OGR_G_CreateFromGML(arg0 : c_ptrConst(c_char)) : OGRGeometryH;

extern proc OGR_G_ExportToGML(arg0 : OGRGeometryH) : c_ptr(c_char);

extern proc OGR_G_ExportToGMLEx(arg0 : OGRGeometryH, ref papszOptions : c_ptr(c_char)) : c_ptr(c_char);

extern proc OGR_G_ExportToGMLEx(arg0 : OGRGeometryH, papszOptions : c_ptr(c_ptr(c_char))) : c_ptr(c_char);

extern proc OGR_G_CreateFromGMLTree(const ref arg0 : CPLXMLNode) : OGRGeometryH;

extern proc OGR_G_CreateFromGMLTree(arg0 : c_ptrConst(CPLXMLNode)) : OGRGeometryH;

extern proc OGR_G_ExportToGMLTree(arg0 : OGRGeometryH) : c_ptr(CPLXMLNode);

extern proc OGR_G_ExportEnvelopeToGMLTree(arg0 : OGRGeometryH) : c_ptr(CPLXMLNode);

extern proc OGR_G_ExportToKML(arg0 : OGRGeometryH, pszAltitudeMode : c_ptrConst(c_char)) : c_ptr(c_char);

extern proc OGR_G_ExportToJson(arg0 : OGRGeometryH) : c_ptr(c_char);

extern proc OGR_G_ExportToJsonEx(arg0 : OGRGeometryH, ref papszOptions : c_ptr(c_char)) : c_ptr(c_char);

extern proc OGR_G_ExportToJsonEx(arg0 : OGRGeometryH, papszOptions : c_ptr(c_ptr(c_char))) : c_ptr(c_char);

extern proc OGR_G_CreateGeometryFromJson(arg0 : c_ptrConst(c_char)) : OGRGeometryH;

extern proc OGR_G_CreateGeometryFromEsriJson(arg0 : c_ptrConst(c_char)) : OGRGeometryH;

extern proc OGR_G_AssignSpatialReference(arg0 : OGRGeometryH, arg1 : OGRSpatialReferenceH) : void;

extern proc OGR_G_GetSpatialReference(arg0 : OGRGeometryH) : OGRSpatialReferenceH;

extern proc OGR_G_Transform(arg0 : OGRGeometryH, arg1 : OGRCoordinateTransformationH) : OGRErr;

extern proc OGR_G_TransformTo(arg0 : OGRGeometryH, arg1 : OGRSpatialReferenceH) : OGRErr;

extern proc OGR_GeomTransformer_Create(arg0 : OGRCoordinateTransformationH, papszOptions : CSLConstList) : OGRGeomTransformerH;

extern proc OGR_GeomTransformer_Transform(hTransformer : OGRGeomTransformerH, hGeom : OGRGeometryH) : OGRGeometryH;

extern proc OGR_GeomTransformer_Destroy(hTransformer : OGRGeomTransformerH) : void;

extern proc OGR_G_Simplify(hThis : OGRGeometryH, tolerance : c_double) : OGRGeometryH;

extern proc OGR_G_SimplifyPreserveTopology(hThis : OGRGeometryH, tolerance : c_double) : OGRGeometryH;

extern proc OGR_G_DelaunayTriangulation(hThis : OGRGeometryH, dfTolerance : c_double, bOnlyEdges : c_int) : OGRGeometryH;

extern proc OGR_G_Segmentize(hGeom : OGRGeometryH, dfMaxLength : c_double) : void;

extern proc OGR_G_Intersects(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Equals(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Disjoint(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Touches(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Crosses(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Within(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Contains(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Overlaps(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Boundary(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_ConvexHull(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_ConcaveHull(arg0 : OGRGeometryH, dfRatio : c_double, bAllowHoles : bool) : OGRGeometryH;

extern proc OGR_G_Buffer(arg0 : OGRGeometryH, arg1 : c_double, arg2 : c_int) : OGRGeometryH;

extern proc OGR_G_Intersection(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_Union(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_UnionCascaded(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_UnaryUnion(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_PointOnSurface(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_Difference(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_SymDifference(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_Distance(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_double;

extern proc OGR_G_Distance3D(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_double;

extern proc OGR_G_Length(arg0 : OGRGeometryH) : c_double;

extern proc OGR_G_Area(arg0 : OGRGeometryH) : c_double;

extern proc OGR_G_GeodesicArea(arg0 : OGRGeometryH) : c_double;

extern proc OGR_G_IsClockwise(hGeom : OGRGeometryH) : bool;

extern proc OGR_G_Centroid(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Value(arg0 : OGRGeometryH, dfDistance : c_double) : OGRGeometryH;

extern proc OGR_G_Empty(arg0 : OGRGeometryH) : void;

extern proc OGR_G_IsEmpty(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_IsValid(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_MakeValid(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_MakeValidEx(arg0 : OGRGeometryH, arg1 : CSLConstList) : OGRGeometryH;

extern proc OGR_G_Normalize(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_IsSimple(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_IsRing(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_SetPrecision(arg0 : OGRGeometryH, dfGridSize : c_double, nFlags : c_int) : OGRGeometryH;

extern proc OGR_G_Polygonize(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_Intersect(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_Equal(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : c_int;

extern proc OGR_G_SymmetricDifference(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_GetArea(arg0 : OGRGeometryH) : c_double;

extern proc OGR_G_GetBoundary(arg0 : OGRGeometryH) : OGRGeometryH;

extern proc OGR_G_GetPointCount(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_GetPoints(hGeom : OGRGeometryH, pabyX : c_ptr(void), nXStride : c_int, pabyY : c_ptr(void), nYStride : c_int, pabyZ : c_ptr(void), nZStride : c_int) : c_int;

extern proc OGR_G_GetPointsZM(hGeom : OGRGeometryH, pabyX : c_ptr(void), nXStride : c_int, pabyY : c_ptr(void), nYStride : c_int, pabyZ : c_ptr(void), nZStride : c_int, pabyM : c_ptr(void), nMStride : c_int) : c_int;

extern proc OGR_G_GetX(arg0 : OGRGeometryH, arg1 : c_int) : c_double;

extern proc OGR_G_GetY(arg0 : OGRGeometryH, arg1 : c_int) : c_double;

extern proc OGR_G_GetZ(arg0 : OGRGeometryH, arg1 : c_int) : c_double;

extern proc OGR_G_GetM(arg0 : OGRGeometryH, arg1 : c_int) : c_double;

extern proc OGR_G_GetPoint(arg0 : OGRGeometryH, iPoint : c_int, ref arg2 : c_double, ref arg3 : c_double, ref arg4 : c_double) : void;

extern proc OGR_G_GetPoint(arg0 : OGRGeometryH, iPoint : c_int, arg2 : c_ptr(c_double), arg3 : c_ptr(c_double), arg4 : c_ptr(c_double)) : void;

extern proc OGR_G_GetPointZM(arg0 : OGRGeometryH, iPoint : c_int, ref arg2 : c_double, ref arg3 : c_double, ref arg4 : c_double, ref arg5 : c_double) : void;

extern proc OGR_G_GetPointZM(arg0 : OGRGeometryH, iPoint : c_int, arg2 : c_ptr(c_double), arg3 : c_ptr(c_double), arg4 : c_ptr(c_double), arg5 : c_ptr(c_double)) : void;

extern proc OGR_G_SetPointCount(hGeom : OGRGeometryH, nNewPointCount : c_int) : void;

extern proc OGR_G_SetPoint(arg0 : OGRGeometryH, iPoint : c_int, arg2 : c_double, arg3 : c_double, arg4 : c_double) : void;

extern proc OGR_G_SetPoint_2D(arg0 : OGRGeometryH, iPoint : c_int, arg2 : c_double, arg3 : c_double) : void;

extern proc OGR_G_SetPointM(arg0 : OGRGeometryH, iPoint : c_int, arg2 : c_double, arg3 : c_double, arg4 : c_double) : void;

extern proc OGR_G_SetPointZM(arg0 : OGRGeometryH, iPoint : c_int, arg2 : c_double, arg3 : c_double, arg4 : c_double, arg5 : c_double) : void;

extern proc OGR_G_AddPoint(arg0 : OGRGeometryH, arg1 : c_double, arg2 : c_double, arg3 : c_double) : void;

extern proc OGR_G_AddPoint_2D(arg0 : OGRGeometryH, arg1 : c_double, arg2 : c_double) : void;

extern proc OGR_G_AddPointM(arg0 : OGRGeometryH, arg1 : c_double, arg2 : c_double, arg3 : c_double) : void;

extern proc OGR_G_AddPointZM(arg0 : OGRGeometryH, arg1 : c_double, arg2 : c_double, arg3 : c_double, arg4 : c_double) : void;

extern proc OGR_G_SetPoints(hGeom : OGRGeometryH, nPointsIn : c_int, pabyX : c_ptrConst(void), nXStride : c_int, pabyY : c_ptrConst(void), nYStride : c_int, pabyZ : c_ptrConst(void), nZStride : c_int) : void;

extern proc OGR_G_SetPointsZM(hGeom : OGRGeometryH, nPointsIn : c_int, pabyX : c_ptrConst(void), nXStride : c_int, pabyY : c_ptrConst(void), nYStride : c_int, pabyZ : c_ptrConst(void), nZStride : c_int, pabyM : c_ptrConst(void), nMStride : c_int) : void;

extern proc OGR_G_SwapXY(hGeom : OGRGeometryH) : void;

extern proc OGR_G_GetGeometryCount(arg0 : OGRGeometryH) : c_int;

extern proc OGR_G_GetGeometryRef(arg0 : OGRGeometryH, arg1 : c_int) : OGRGeometryH;

extern proc OGR_G_AddGeometry(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : OGRErr;

extern proc OGR_G_AddGeometryDirectly(arg0 : OGRGeometryH, arg1 : OGRGeometryH) : OGRErr;

extern proc OGR_G_RemoveGeometry(arg0 : OGRGeometryH, arg1 : c_int, arg2 : c_int) : OGRErr;

extern proc OGR_G_HasCurveGeometry(arg0 : OGRGeometryH, bLookForNonLinear : c_int) : c_int;

extern proc OGR_G_GetLinearGeometry(hGeom : OGRGeometryH, dfMaxAngleStepSizeDegrees : c_double, ref papszOptions : c_ptr(c_char)) : OGRGeometryH;

extern proc OGR_G_GetLinearGeometry(hGeom : OGRGeometryH, dfMaxAngleStepSizeDegrees : c_double, papszOptions : c_ptr(c_ptr(c_char))) : OGRGeometryH;

extern proc OGR_G_GetCurveGeometry(hGeom : OGRGeometryH, ref papszOptions : c_ptr(c_char)) : OGRGeometryH;

extern proc OGR_G_GetCurveGeometry(hGeom : OGRGeometryH, papszOptions : c_ptr(c_ptr(c_char))) : OGRGeometryH;

extern proc OGRBuildPolygonFromEdges(hLinesAsCollection : OGRGeometryH, bBestEffort : c_int, bAutoClose : c_int, dfTolerance : c_double, ref peErr : OGRErr) : OGRGeometryH;

extern proc OGRBuildPolygonFromEdges(hLinesAsCollection : OGRGeometryH, bBestEffort : c_int, bAutoClose : c_int, dfTolerance : c_double, peErr : c_ptr(OGRErr)) : OGRGeometryH;

extern proc OGRSetGenerate_DB2_V72_BYTE_ORDER(bGenerate_DB2_V72_BYTE_ORDER : c_int) : OGRErr;

extern proc OGRGetGenerate_DB2_V72_BYTE_ORDER() : c_int;

extern proc OGRSetNonLinearGeometriesEnabledFlag(bFlag : c_int) : void;

extern proc OGRGetNonLinearGeometriesEnabledFlag() : c_int;

extern proc OGRHasPreparedGeometrySupport() : c_int;

extern proc OGRCreatePreparedGeometry(hGeom : OGRGeometryH) : OGRPreparedGeometryH;

extern proc OGRDestroyPreparedGeometry(hPreparedGeom : OGRPreparedGeometryH) : void;

extern proc OGRPreparedGeometryIntersects(hPreparedGeom : OGRPreparedGeometryH, hOtherGeom : OGRGeometryH) : c_int;

extern proc OGRPreparedGeometryContains(hPreparedGeom : OGRPreparedGeometryH, hOtherGeom : OGRGeometryH) : c_int;

extern proc OGR_Fld_Create(arg0 : c_ptrConst(c_char), arg1 : OGRFieldType) : OGRFieldDefnH;

extern proc OGR_Fld_Destroy(arg0 : OGRFieldDefnH) : void;

extern proc OGR_Fld_SetName(arg0 : OGRFieldDefnH, arg1 : c_ptrConst(c_char)) : void;

extern proc OGR_Fld_GetNameRef(arg0 : OGRFieldDefnH) : c_ptrConst(c_char);

extern proc OGR_Fld_SetAlternativeName(arg0 : OGRFieldDefnH, arg1 : c_ptrConst(c_char)) : void;

extern proc OGR_Fld_GetAlternativeNameRef(arg0 : OGRFieldDefnH) : c_ptrConst(c_char);

extern proc OGR_Fld_GetType(arg0 : OGRFieldDefnH) : OGRFieldType;

extern proc OGR_Fld_SetType(arg0 : OGRFieldDefnH, arg1 : OGRFieldType) : void;

extern proc OGR_Fld_GetSubType(arg0 : OGRFieldDefnH) : OGRFieldSubType;

extern proc OGR_Fld_SetSubType(arg0 : OGRFieldDefnH, arg1 : OGRFieldSubType) : void;

extern proc OGR_Fld_GetJustify(arg0 : OGRFieldDefnH) : OGRJustification;

extern proc OGR_Fld_SetJustify(arg0 : OGRFieldDefnH, arg1 : OGRJustification) : void;

extern proc OGR_Fld_GetWidth(arg0 : OGRFieldDefnH) : c_int;

extern proc OGR_Fld_SetWidth(arg0 : OGRFieldDefnH, arg1 : c_int) : void;

extern proc OGR_Fld_GetPrecision(arg0 : OGRFieldDefnH) : c_int;

extern proc OGR_Fld_SetPrecision(arg0 : OGRFieldDefnH, arg1 : c_int) : void;

extern proc OGR_Fld_GetTZFlag(arg0 : OGRFieldDefnH) : c_int;

extern proc OGR_Fld_SetTZFlag(arg0 : OGRFieldDefnH, arg1 : c_int) : void;

extern proc OGR_Fld_Set(arg0 : OGRFieldDefnH, arg1 : c_ptrConst(c_char), arg2 : OGRFieldType, arg3 : c_int, arg4 : c_int, arg5 : OGRJustification) : void;

extern proc OGR_Fld_IsIgnored(hDefn : OGRFieldDefnH) : c_int;

extern proc OGR_Fld_SetIgnored(hDefn : OGRFieldDefnH, arg1 : c_int) : void;

extern proc OGR_Fld_IsNullable(hDefn : OGRFieldDefnH) : c_int;

extern proc OGR_Fld_SetNullable(hDefn : OGRFieldDefnH, arg1 : c_int) : void;

extern proc OGR_Fld_IsUnique(hDefn : OGRFieldDefnH) : c_int;

extern proc OGR_Fld_SetUnique(hDefn : OGRFieldDefnH, arg1 : c_int) : void;

extern proc OGR_Fld_GetDefault(hDefn : OGRFieldDefnH) : c_ptrConst(c_char);

extern proc OGR_Fld_SetDefault(hDefn : OGRFieldDefnH, arg1 : c_ptrConst(c_char)) : void;

extern proc OGR_Fld_IsDefaultDriverSpecific(hDefn : OGRFieldDefnH) : c_int;

extern proc OGR_Fld_GetDomainName(hDefn : OGRFieldDefnH) : c_ptrConst(c_char);

extern proc OGR_Fld_SetDomainName(hDefn : OGRFieldDefnH, arg1 : c_ptrConst(c_char)) : void;

extern proc OGR_Fld_GetComment(hDefn : OGRFieldDefnH) : c_ptrConst(c_char);

extern proc OGR_Fld_SetComment(hDefn : OGRFieldDefnH, arg1 : c_ptrConst(c_char)) : void;

extern proc OGR_GetFieldTypeName(arg0 : OGRFieldType) : c_ptrConst(c_char);

extern proc OGR_GetFieldSubTypeName(arg0 : OGRFieldSubType) : c_ptrConst(c_char);

extern proc OGR_AreTypeSubTypeCompatible(eType : OGRFieldType, eSubType : OGRFieldSubType) : c_int;

extern proc OGR_GFld_Create(arg0 : c_ptrConst(c_char), arg1 : OGRwkbGeometryType) : OGRGeomFieldDefnH;

extern proc OGR_GFld_Destroy(arg0 : OGRGeomFieldDefnH) : void;

extern proc OGR_GFld_SetName(arg0 : OGRGeomFieldDefnH, arg1 : c_ptrConst(c_char)) : void;

extern proc OGR_GFld_GetNameRef(arg0 : OGRGeomFieldDefnH) : c_ptrConst(c_char);

extern proc OGR_GFld_GetType(arg0 : OGRGeomFieldDefnH) : OGRwkbGeometryType;

extern proc OGR_GFld_SetType(arg0 : OGRGeomFieldDefnH, arg1 : OGRwkbGeometryType) : void;

extern proc OGR_GFld_GetSpatialRef(arg0 : OGRGeomFieldDefnH) : OGRSpatialReferenceH;

extern proc OGR_GFld_SetSpatialRef(arg0 : OGRGeomFieldDefnH, hSRS : OGRSpatialReferenceH) : void;

extern proc OGR_GFld_IsNullable(hDefn : OGRGeomFieldDefnH) : c_int;

extern proc OGR_GFld_SetNullable(hDefn : OGRGeomFieldDefnH, arg1 : c_int) : void;

extern proc OGR_GFld_IsIgnored(hDefn : OGRGeomFieldDefnH) : c_int;

extern proc OGR_GFld_SetIgnored(hDefn : OGRGeomFieldDefnH, arg1 : c_int) : void;

extern proc OGR_GFld_GetCoordinatePrecision(arg0 : OGRGeomFieldDefnH) : OGRGeomCoordinatePrecisionH;

extern proc OGR_GFld_SetCoordinatePrecision(arg0 : OGRGeomFieldDefnH, arg1 : OGRGeomCoordinatePrecisionH) : void;

extern proc OGR_FD_Create(arg0 : c_ptrConst(c_char)) : OGRFeatureDefnH;

extern proc OGR_FD_Destroy(arg0 : OGRFeatureDefnH) : void;

extern proc OGR_FD_Release(arg0 : OGRFeatureDefnH) : void;

extern proc OGR_FD_GetName(arg0 : OGRFeatureDefnH) : c_ptrConst(c_char);

extern proc OGR_FD_GetFieldCount(arg0 : OGRFeatureDefnH) : c_int;

extern proc OGR_FD_GetFieldDefn(arg0 : OGRFeatureDefnH, arg1 : c_int) : OGRFieldDefnH;

extern proc OGR_FD_GetFieldIndex(arg0 : OGRFeatureDefnH, arg1 : c_ptrConst(c_char)) : c_int;

extern proc OGR_FD_AddFieldDefn(arg0 : OGRFeatureDefnH, arg1 : OGRFieldDefnH) : void;

extern proc OGR_FD_DeleteFieldDefn(hDefn : OGRFeatureDefnH, iField : c_int) : OGRErr;

extern proc OGR_FD_ReorderFieldDefns(hDefn : OGRFeatureDefnH, const ref panMap : c_int) : OGRErr;

extern proc OGR_FD_ReorderFieldDefns(hDefn : OGRFeatureDefnH, panMap : c_ptrConst(c_int)) : OGRErr;

extern proc OGR_FD_GetGeomType(arg0 : OGRFeatureDefnH) : OGRwkbGeometryType;

extern proc OGR_FD_SetGeomType(arg0 : OGRFeatureDefnH, arg1 : OGRwkbGeometryType) : void;

extern proc OGR_FD_IsGeometryIgnored(arg0 : OGRFeatureDefnH) : c_int;

extern proc OGR_FD_SetGeometryIgnored(arg0 : OGRFeatureDefnH, arg1 : c_int) : void;

extern proc OGR_FD_IsStyleIgnored(arg0 : OGRFeatureDefnH) : c_int;

extern proc OGR_FD_SetStyleIgnored(arg0 : OGRFeatureDefnH, arg1 : c_int) : void;

extern proc OGR_FD_Reference(arg0 : OGRFeatureDefnH) : c_int;

extern proc OGR_FD_Dereference(arg0 : OGRFeatureDefnH) : c_int;

extern proc OGR_FD_GetReferenceCount(arg0 : OGRFeatureDefnH) : c_int;

extern proc OGR_FD_GetGeomFieldCount(hFDefn : OGRFeatureDefnH) : c_int;

extern proc OGR_FD_GetGeomFieldDefn(hFDefn : OGRFeatureDefnH, i : c_int) : OGRGeomFieldDefnH;

extern proc OGR_FD_GetGeomFieldIndex(hFDefn : OGRFeatureDefnH, pszName : c_ptrConst(c_char)) : c_int;

extern proc OGR_FD_AddGeomFieldDefn(hFDefn : OGRFeatureDefnH, hGFldDefn : OGRGeomFieldDefnH) : void;

extern proc OGR_FD_DeleteGeomFieldDefn(hFDefn : OGRFeatureDefnH, iGeomField : c_int) : OGRErr;

extern proc OGR_FD_IsSame(hFDefn : OGRFeatureDefnH, hOtherFDefn : OGRFeatureDefnH) : c_int;

extern proc OGR_F_Create(arg0 : OGRFeatureDefnH) : OGRFeatureH;

extern proc OGR_F_Destroy(arg0 : OGRFeatureH) : void;

extern proc OGR_F_GetDefnRef(arg0 : OGRFeatureH) : OGRFeatureDefnH;

extern proc OGR_F_SetGeometryDirectly(arg0 : OGRFeatureH, arg1 : OGRGeometryH) : OGRErr;

extern proc OGR_F_SetGeometry(arg0 : OGRFeatureH, arg1 : OGRGeometryH) : OGRErr;

extern proc OGR_F_GetGeometryRef(arg0 : OGRFeatureH) : OGRGeometryH;

extern proc OGR_F_StealGeometry(arg0 : OGRFeatureH) : OGRGeometryH;

extern proc OGR_F_StealGeometryEx(arg0 : OGRFeatureH, iGeomField : c_int) : OGRGeometryH;

extern proc OGR_F_Clone(arg0 : OGRFeatureH) : OGRFeatureH;

extern proc OGR_F_Equal(arg0 : OGRFeatureH, arg1 : OGRFeatureH) : c_int;

extern proc OGR_F_GetFieldCount(arg0 : OGRFeatureH) : c_int;

extern proc OGR_F_GetFieldDefnRef(arg0 : OGRFeatureH, arg1 : c_int) : OGRFieldDefnH;

extern proc OGR_F_GetFieldIndex(arg0 : OGRFeatureH, arg1 : c_ptrConst(c_char)) : c_int;

extern proc OGR_F_IsFieldSet(arg0 : OGRFeatureH, arg1 : c_int) : c_int;

extern proc OGR_F_UnsetField(arg0 : OGRFeatureH, arg1 : c_int) : void;

extern proc OGR_F_IsFieldNull(arg0 : OGRFeatureH, arg1 : c_int) : c_int;

extern proc OGR_F_IsFieldSetAndNotNull(arg0 : OGRFeatureH, arg1 : c_int) : c_int;

extern proc OGR_F_SetFieldNull(arg0 : OGRFeatureH, arg1 : c_int) : void;

extern proc OGR_F_GetRawFieldRef(arg0 : OGRFeatureH, arg1 : c_int) : c_ptr(OGRField);

extern proc OGR_RawField_IsUnset(const ref arg0 : OGRField) : c_int;

extern proc OGR_RawField_IsUnset(arg0 : c_ptrConst(OGRField)) : c_int;

extern proc OGR_RawField_IsNull(const ref arg0 : OGRField) : c_int;

extern proc OGR_RawField_IsNull(arg0 : c_ptrConst(OGRField)) : c_int;

extern proc OGR_RawField_SetUnset(ref arg0 : OGRField) : void;

extern proc OGR_RawField_SetUnset(arg0 : c_ptr(OGRField)) : void;

extern proc OGR_RawField_SetNull(ref arg0 : OGRField) : void;

extern proc OGR_RawField_SetNull(arg0 : c_ptr(OGRField)) : void;

extern proc OGR_F_GetFieldAsInteger(arg0 : OGRFeatureH, arg1 : c_int) : c_int;

extern proc OGR_F_GetFieldAsInteger64(arg0 : OGRFeatureH, arg1 : c_int) : GIntBig;

extern proc OGR_F_GetFieldAsDouble(arg0 : OGRFeatureH, arg1 : c_int) : c_double;

extern proc OGR_F_GetFieldAsString(arg0 : OGRFeatureH, arg1 : c_int) : c_ptrConst(c_char);

extern proc OGR_F_GetFieldAsISO8601DateTime(arg0 : OGRFeatureH, arg1 : c_int, arg2 : CSLConstList) : c_ptrConst(c_char);

extern proc OGR_F_GetFieldAsIntegerList(arg0 : OGRFeatureH, arg1 : c_int, ref arg2 : c_int) : c_ptrConst(c_int);

extern proc OGR_F_GetFieldAsIntegerList(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_ptr(c_int)) : c_ptrConst(c_int);

extern proc OGR_F_GetFieldAsInteger64List(arg0 : OGRFeatureH, arg1 : c_int, ref arg2 : c_int) : c_ptrConst(GIntBig);

extern proc OGR_F_GetFieldAsInteger64List(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_ptr(c_int)) : c_ptrConst(GIntBig);

extern proc OGR_F_GetFieldAsDoubleList(arg0 : OGRFeatureH, arg1 : c_int, ref arg2 : c_int) : c_ptrConst(c_double);

extern proc OGR_F_GetFieldAsDoubleList(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_ptr(c_int)) : c_ptrConst(c_double);

extern proc OGR_F_GetFieldAsStringList(arg0 : OGRFeatureH, arg1 : c_int) : c_ptr(c_ptr(c_char));

extern proc OGR_F_GetFieldAsBinary(arg0 : OGRFeatureH, arg1 : c_int, ref arg2 : c_int) : c_ptr(GByte);

extern proc OGR_F_GetFieldAsBinary(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_ptr(c_int)) : c_ptr(GByte);

extern proc OGR_F_GetFieldAsDateTime(arg0 : OGRFeatureH, arg1 : c_int, ref arg2 : c_int, ref arg3 : c_int, ref arg4 : c_int, ref arg5 : c_int, ref arg6 : c_int, ref arg7 : c_int, ref arg8 : c_int) : c_int;

extern proc OGR_F_GetFieldAsDateTime(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_ptr(c_int), arg3 : c_ptr(c_int), arg4 : c_ptr(c_int), arg5 : c_ptr(c_int), arg6 : c_ptr(c_int), arg7 : c_ptr(c_int), arg8 : c_ptr(c_int)) : c_int;

extern proc OGR_F_GetFieldAsDateTimeEx(hFeat : OGRFeatureH, iField : c_int, ref pnYear : c_int, ref pnMonth : c_int, ref pnDay : c_int, ref pnHour : c_int, ref pnMinute : c_int, ref pfSecond : c_float, ref pnTZFlag : c_int) : c_int;

extern proc OGR_F_GetFieldAsDateTimeEx(hFeat : OGRFeatureH, iField : c_int, pnYear : c_ptr(c_int), pnMonth : c_ptr(c_int), pnDay : c_ptr(c_int), pnHour : c_ptr(c_int), pnMinute : c_ptr(c_int), pfSecond : c_ptr(c_float), pnTZFlag : c_ptr(c_int)) : c_int;

extern proc OGR_F_SetFieldInteger(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int) : void;

extern proc OGR_F_SetFieldInteger64(arg0 : OGRFeatureH, arg1 : c_int, arg2 : GIntBig) : void;

extern proc OGR_F_SetFieldDouble(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_double) : void;

extern proc OGR_F_SetFieldString(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_ptrConst(c_char)) : void;

extern proc OGR_F_SetFieldIntegerList(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int, const ref arg3 : c_int) : void;

extern proc OGR_F_SetFieldIntegerList(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int, arg3 : c_ptrConst(c_int)) : void;

extern proc OGR_F_SetFieldInteger64List(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int, const ref arg3 : GIntBig) : void;

extern proc OGR_F_SetFieldInteger64List(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int, arg3 : c_ptrConst(GIntBig)) : void;

extern proc OGR_F_SetFieldDoubleList(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int, const ref arg3 : c_double) : void;

extern proc OGR_F_SetFieldDoubleList(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int, arg3 : c_ptrConst(c_double)) : void;

extern proc OGR_F_SetFieldStringList(arg0 : OGRFeatureH, arg1 : c_int, arg2 : CSLConstList) : void;

extern proc OGR_F_SetFieldRaw(arg0 : OGRFeatureH, arg1 : c_int, const ref arg2 : OGRField) : void;

extern proc OGR_F_SetFieldRaw(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_ptrConst(OGRField)) : void;

extern proc OGR_F_SetFieldBinary(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int, arg3 : c_ptrConst(void)) : void;

extern proc OGR_F_SetFieldDateTime(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int, arg3 : c_int, arg4 : c_int, arg5 : c_int, arg6 : c_int, arg7 : c_int, arg8 : c_int) : void;

extern proc OGR_F_SetFieldDateTimeEx(arg0 : OGRFeatureH, arg1 : c_int, arg2 : c_int, arg3 : c_int, arg4 : c_int, arg5 : c_int, arg6 : c_int, arg7 : c_float, arg8 : c_int) : void;

extern proc OGR_F_GetGeomFieldCount(hFeat : OGRFeatureH) : c_int;

extern proc OGR_F_GetGeomFieldDefnRef(hFeat : OGRFeatureH, iField : c_int) : OGRGeomFieldDefnH;

extern proc OGR_F_GetGeomFieldIndex(hFeat : OGRFeatureH, pszName : c_ptrConst(c_char)) : c_int;

extern proc OGR_F_GetGeomFieldRef(hFeat : OGRFeatureH, iField : c_int) : OGRGeometryH;

extern proc OGR_F_SetGeomFieldDirectly(hFeat : OGRFeatureH, iField : c_int, hGeom : OGRGeometryH) : OGRErr;

extern proc OGR_F_SetGeomField(hFeat : OGRFeatureH, iField : c_int, hGeom : OGRGeometryH) : OGRErr;

extern proc OGR_F_GetFID(arg0 : OGRFeatureH) : GIntBig;

extern proc OGR_F_SetFID(arg0 : OGRFeatureH, arg1 : GIntBig) : OGRErr;

extern proc OGR_F_DumpReadable(arg0 : OGRFeatureH, ref arg1 : c_FILE) : void;

extern proc OGR_F_DumpReadable(arg0 : OGRFeatureH, arg1 : c_ptr(c_FILE)) : void;

extern proc OGR_F_DumpReadableAsString(arg0 : OGRFeatureH, arg1 : CSLConstList) : c_ptr(c_char);

extern proc OGR_F_SetFrom(arg0 : OGRFeatureH, arg1 : OGRFeatureH, arg2 : c_int) : OGRErr;

extern proc OGR_F_SetFromWithMap(arg0 : OGRFeatureH, arg1 : OGRFeatureH, arg2 : c_int, const ref arg3 : c_int) : OGRErr;

extern proc OGR_F_SetFromWithMap(arg0 : OGRFeatureH, arg1 : OGRFeatureH, arg2 : c_int, arg3 : c_ptrConst(c_int)) : OGRErr;

extern proc OGR_F_GetStyleString(arg0 : OGRFeatureH) : c_ptrConst(c_char);

extern proc OGR_F_SetStyleString(arg0 : OGRFeatureH, arg1 : c_ptrConst(c_char)) : void;

extern proc OGR_F_SetStyleStringDirectly(arg0 : OGRFeatureH, arg1 : c_ptr(c_char)) : void;

extern proc OGR_F_GetStyleTable(arg0 : OGRFeatureH) : OGRStyleTableH;

extern proc OGR_F_SetStyleTableDirectly(arg0 : OGRFeatureH, arg1 : OGRStyleTableH) : void;

extern proc OGR_F_SetStyleTable(arg0 : OGRFeatureH, arg1 : OGRStyleTableH) : void;

extern proc OGR_F_GetNativeData(arg0 : OGRFeatureH) : c_ptrConst(c_char);

extern proc OGR_F_SetNativeData(arg0 : OGRFeatureH, arg1 : c_ptrConst(c_char)) : void;

extern proc OGR_F_GetNativeMediaType(arg0 : OGRFeatureH) : c_ptrConst(c_char);

extern proc OGR_F_SetNativeMediaType(arg0 : OGRFeatureH, arg1 : c_ptrConst(c_char)) : void;

extern proc OGR_F_FillUnsetWithDefault(hFeat : OGRFeatureH, bNotNullableOnly : c_int, ref papszOptions : c_ptr(c_char)) : void;

extern proc OGR_F_FillUnsetWithDefault(hFeat : OGRFeatureH, bNotNullableOnly : c_int, papszOptions : c_ptr(c_ptr(c_char))) : void;

extern proc OGR_F_Validate(arg0 : OGRFeatureH, nValidateFlags : c_int, bEmitError : c_int) : c_int;

extern proc OGR_FldDomain_Destroy(arg0 : OGRFieldDomainH) : void;

extern proc OGR_FldDomain_GetName(arg0 : OGRFieldDomainH) : c_ptrConst(c_char);

extern proc OGR_FldDomain_GetDescription(arg0 : OGRFieldDomainH) : c_ptrConst(c_char);

extern proc OGR_FldDomain_GetDomainType(arg0 : OGRFieldDomainH) : OGRFieldDomainType;

extern proc OGR_FldDomain_GetFieldType(arg0 : OGRFieldDomainH) : OGRFieldType;

extern proc OGR_FldDomain_GetFieldSubType(arg0 : OGRFieldDomainH) : OGRFieldSubType;

extern proc OGR_FldDomain_GetSplitPolicy(arg0 : OGRFieldDomainH) : OGRFieldDomainSplitPolicy;

extern proc OGR_FldDomain_SetSplitPolicy(arg0 : OGRFieldDomainH, arg1 : OGRFieldDomainSplitPolicy) : void;

extern proc OGR_FldDomain_GetMergePolicy(arg0 : OGRFieldDomainH) : OGRFieldDomainMergePolicy;

extern proc OGR_FldDomain_SetMergePolicy(arg0 : OGRFieldDomainH, arg1 : OGRFieldDomainMergePolicy) : void;

extern proc OGR_CodedFldDomain_Create(pszName : c_ptrConst(c_char), pszDescription : c_ptrConst(c_char), eFieldType : OGRFieldType, eFieldSubType : OGRFieldSubType, const ref enumeration : OGRCodedValue) : OGRFieldDomainH;

extern proc OGR_CodedFldDomain_Create(pszName : c_ptrConst(c_char), pszDescription : c_ptrConst(c_char), eFieldType : OGRFieldType, eFieldSubType : OGRFieldSubType, enumeration : c_ptrConst(OGRCodedValue)) : OGRFieldDomainH;

extern proc OGR_CodedFldDomain_GetEnumeration(arg0 : OGRFieldDomainH) : c_ptrConst(OGRCodedValue);

extern proc OGR_RangeFldDomain_Create(pszName : c_ptrConst(c_char), pszDescription : c_ptrConst(c_char), eFieldType : OGRFieldType, eFieldSubType : OGRFieldSubType, const ref psMin : OGRField, bMinIsInclusive : bool, const ref psMax : OGRField, bMaxIsInclusive : bool) : OGRFieldDomainH;

extern proc OGR_RangeFldDomain_Create(pszName : c_ptrConst(c_char), pszDescription : c_ptrConst(c_char), eFieldType : OGRFieldType, eFieldSubType : OGRFieldSubType, psMin : c_ptrConst(OGRField), bMinIsInclusive : bool, psMax : c_ptrConst(OGRField), bMaxIsInclusive : bool) : OGRFieldDomainH;

extern proc OGR_RangeFldDomain_GetMin(arg0 : OGRFieldDomainH, ref pbIsInclusiveOut : bool) : c_ptrConst(OGRField);

extern proc OGR_RangeFldDomain_GetMin(arg0 : OGRFieldDomainH, pbIsInclusiveOut : c_ptr(bool)) : c_ptrConst(OGRField);

extern proc OGR_RangeFldDomain_GetMax(arg0 : OGRFieldDomainH, ref pbIsInclusiveOut : bool) : c_ptrConst(OGRField);

extern proc OGR_RangeFldDomain_GetMax(arg0 : OGRFieldDomainH, pbIsInclusiveOut : c_ptr(bool)) : c_ptrConst(OGRField);

extern proc OGR_GlobFldDomain_Create(pszName : c_ptrConst(c_char), pszDescription : c_ptrConst(c_char), eFieldType : OGRFieldType, eFieldSubType : OGRFieldSubType, pszGlob : c_ptrConst(c_char)) : OGRFieldDomainH;

extern proc OGR_GlobFldDomain_GetGlob(arg0 : OGRFieldDomainH) : c_ptrConst(c_char);

extern proc OGR_L_GetName(arg0 : OGRLayerH) : c_ptrConst(c_char);

extern proc OGR_L_GetGeomType(arg0 : OGRLayerH) : OGRwkbGeometryType;

extern proc OGR_L_GetGeometryTypes(hLayer : OGRLayerH, iGeomField : c_int, nFlags : c_int, ref pnEntryCount : c_int, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : c_ptr(OGRGeometryTypeCounter);

extern proc OGR_L_GetGeometryTypes(hLayer : OGRLayerH, iGeomField : c_int, nFlags : c_int, pnEntryCount : c_ptr(c_int), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : c_ptr(OGRGeometryTypeCounter);

extern proc OGR_L_GetSpatialFilter(arg0 : OGRLayerH) : OGRGeometryH;

extern proc OGR_L_SetSpatialFilter(arg0 : OGRLayerH, arg1 : OGRGeometryH) : void;

extern proc OGR_L_SetSpatialFilterRect(arg0 : OGRLayerH, arg1 : c_double, arg2 : c_double, arg3 : c_double, arg4 : c_double) : void;

extern proc OGR_L_SetSpatialFilterEx(arg0 : OGRLayerH, iGeomField : c_int, hGeom : OGRGeometryH) : void;

extern proc OGR_L_SetSpatialFilterRectEx(arg0 : OGRLayerH, iGeomField : c_int, dfMinX : c_double, dfMinY : c_double, dfMaxX : c_double, dfMaxY : c_double) : void;

extern proc OGR_L_SetAttributeFilter(arg0 : OGRLayerH, arg1 : c_ptrConst(c_char)) : OGRErr;

extern proc OGR_L_ResetReading(arg0 : OGRLayerH) : void;

extern proc OGR_L_GetNextFeature(arg0 : OGRLayerH) : OGRFeatureH;


// extern proc OGR_L_GetArrowStream(hLayer : OGRLayerH, ref out_stream : ArrowArrayStream, ref papszOptions : c_ptr(c_char)) : bool;

// extern proc OGR_L_GetArrowStream(hLayer : OGRLayerH, out_stream : c_ptr(ArrowArrayStream), papszOptions : c_ptr(c_ptr(c_char))) : bool;


// extern proc OGR_L_IsArrowSchemaSupported(hLayer : OGRLayerH, const ref schema : ArrowSchema, ref papszOptions : c_ptr(c_char), ref ppszErrorMsg : c_ptr(c_char)) : bool;

// extern proc OGR_L_IsArrowSchemaSupported(hLayer : OGRLayerH, schema : c_ptrConst(ArrowSchema), papszOptions : c_ptr(c_ptr(c_char)), ppszErrorMsg : c_ptr(c_ptr(c_char))) : bool;

// extern proc OGR_L_CreateFieldFromArrowSchema(hLayer : OGRLayerH, const ref schema : ArrowSchema, ref papszOptions : c_ptr(c_char)) : bool;

// extern proc OGR_L_CreateFieldFromArrowSchema(hLayer : OGRLayerH, schema : c_ptrConst(ArrowSchema), papszOptions : c_ptr(c_ptr(c_char))) : bool;


// extern proc OGR_L_WriteArrowBatch(hLayer : OGRLayerH, const ref schema : ArrowSchema, ref array : ArrowArray, ref papszOptions : c_ptr(c_char)) : bool;

// extern proc OGR_L_WriteArrowBatch(hLayer : OGRLayerH, schema : c_ptrConst(ArrowSchema), array : c_ptr(ArrowArray), papszOptions : c_ptr(c_ptr(c_char))) : bool;

extern proc OGR_L_SetNextByIndex(arg0 : OGRLayerH, arg1 : GIntBig) : OGRErr;

extern proc OGR_L_GetFeature(arg0 : OGRLayerH, arg1 : GIntBig) : OGRFeatureH;

extern proc OGR_L_SetFeature(arg0 : OGRLayerH, arg1 : OGRFeatureH) : OGRErr;

extern proc OGR_L_CreateFeature(arg0 : OGRLayerH, arg1 : OGRFeatureH) : OGRErr;

extern proc OGR_L_DeleteFeature(arg0 : OGRLayerH, arg1 : GIntBig) : OGRErr;

extern proc OGR_L_UpsertFeature(arg0 : OGRLayerH, arg1 : OGRFeatureH) : OGRErr;

extern proc OGR_L_UpdateFeature(arg0 : OGRLayerH, arg1 : OGRFeatureH, nUpdatedFieldsCount : c_int, const ref panUpdatedFieldsIdx : c_int, nUpdatedGeomFieldsCount : c_int, const ref panUpdatedGeomFieldsIdx : c_int, bUpdateStyleString : bool) : OGRErr;

extern proc OGR_L_UpdateFeature(arg0 : OGRLayerH, arg1 : OGRFeatureH, nUpdatedFieldsCount : c_int, panUpdatedFieldsIdx : c_ptrConst(c_int), nUpdatedGeomFieldsCount : c_int, panUpdatedGeomFieldsIdx : c_ptrConst(c_int), bUpdateStyleString : bool) : OGRErr;

extern proc OGR_L_GetLayerDefn(arg0 : OGRLayerH) : OGRFeatureDefnH;

extern proc OGR_L_GetSpatialRef(arg0 : OGRLayerH) : OGRSpatialReferenceH;

extern proc OGR_L_GetSupportedSRSList(hLayer : OGRLayerH, iGeomField : c_int, ref pnCount : c_int) : c_ptr(OGRSpatialReferenceH);

extern proc OGR_L_GetSupportedSRSList(hLayer : OGRLayerH, iGeomField : c_int, pnCount : c_ptr(c_int)) : c_ptr(OGRSpatialReferenceH);

extern proc OGR_L_SetActiveSRS(hLayer : OGRLayerH, iGeomField : c_int, hSRS : OGRSpatialReferenceH) : OGRErr;

extern proc OGR_L_FindFieldIndex(arg0 : OGRLayerH, arg1 : c_ptrConst(c_char), bExactMatch : c_int) : c_int;

extern proc OGR_L_GetFeatureCount(arg0 : OGRLayerH, arg1 : c_int) : GIntBig;

extern proc OGR_L_GetExtent(arg0 : OGRLayerH, ref arg1 : OGREnvelope, arg2 : c_int) : OGRErr;

extern proc OGR_L_GetExtent(arg0 : OGRLayerH, arg1 : c_ptr(OGREnvelope), arg2 : c_int) : OGRErr;

extern proc OGR_L_GetExtentEx(arg0 : OGRLayerH, iGeomField : c_int, ref psExtent : OGREnvelope, bForce : c_int) : OGRErr;

extern proc OGR_L_GetExtentEx(arg0 : OGRLayerH, iGeomField : c_int, psExtent : c_ptr(OGREnvelope), bForce : c_int) : OGRErr;

extern proc OGR_L_GetExtent3D(hLayer : OGRLayerH, iGeomField : c_int, ref psExtent3D : OGREnvelope3D, bForce : c_int) : OGRErr;

extern proc OGR_L_GetExtent3D(hLayer : OGRLayerH, iGeomField : c_int, psExtent3D : c_ptr(OGREnvelope3D), bForce : c_int) : OGRErr;

extern proc OGR_L_TestCapability(arg0 : OGRLayerH, arg1 : c_ptrConst(c_char)) : c_int;

extern proc OGR_L_CreateField(arg0 : OGRLayerH, arg1 : OGRFieldDefnH, arg2 : c_int) : OGRErr;

extern proc OGR_L_CreateGeomField(hLayer : OGRLayerH, hFieldDefn : OGRGeomFieldDefnH, bForce : c_int) : OGRErr;

extern proc OGR_L_DeleteField(arg0 : OGRLayerH, iField : c_int) : OGRErr;

extern proc OGR_L_ReorderFields(arg0 : OGRLayerH, ref panMap : c_int) : OGRErr;

extern proc OGR_L_ReorderFields(arg0 : OGRLayerH, panMap : c_ptr(c_int)) : OGRErr;

extern proc OGR_L_ReorderField(arg0 : OGRLayerH, iOldFieldPos : c_int, iNewFieldPos : c_int) : OGRErr;

extern proc OGR_L_AlterFieldDefn(arg0 : OGRLayerH, iField : c_int, hNewFieldDefn : OGRFieldDefnH, nFlags : c_int) : OGRErr;

extern proc OGR_L_AlterGeomFieldDefn(arg0 : OGRLayerH, iField : c_int, hNewGeomFieldDefn : OGRGeomFieldDefnH, nFlags : c_int) : OGRErr;

extern proc OGR_L_StartTransaction(arg0 : OGRLayerH) : OGRErr;

extern proc OGR_L_CommitTransaction(arg0 : OGRLayerH) : OGRErr;

extern proc OGR_L_RollbackTransaction(arg0 : OGRLayerH) : OGRErr;

extern proc OGR_L_Rename(hLayer : OGRLayerH, pszNewName : c_ptrConst(c_char)) : OGRErr;

extern proc OGR_L_Reference(arg0 : OGRLayerH) : c_int;

extern proc OGR_L_Dereference(arg0 : OGRLayerH) : c_int;

extern proc OGR_L_GetRefCount(arg0 : OGRLayerH) : c_int;

extern proc OGR_L_SyncToDisk(arg0 : OGRLayerH) : OGRErr;

extern proc OGR_L_GetFeaturesRead(arg0 : OGRLayerH) : GIntBig;

extern proc OGR_L_GetFIDColumn(arg0 : OGRLayerH) : c_ptrConst(c_char);

extern proc OGR_L_GetGeometryColumn(arg0 : OGRLayerH) : c_ptrConst(c_char);

extern proc OGR_L_GetStyleTable(arg0 : OGRLayerH) : OGRStyleTableH;

extern proc OGR_L_SetStyleTableDirectly(arg0 : OGRLayerH, arg1 : OGRStyleTableH) : void;

extern proc OGR_L_SetStyleTable(arg0 : OGRLayerH, arg1 : OGRStyleTableH) : void;

extern proc OGR_L_SetIgnoredFields(arg0 : OGRLayerH, ref arg1 : c_ptrConst(c_char)) : OGRErr;

extern proc OGR_L_SetIgnoredFields(arg0 : OGRLayerH, arg1 : c_ptr(c_ptrConst(c_char))) : OGRErr;

extern proc OGR_L_Intersection(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, ref arg3 : c_ptr(c_char), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Intersection(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, arg3 : c_ptr(c_ptr(c_char)), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Union(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, ref arg3 : c_ptr(c_char), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Union(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, arg3 : c_ptr(c_ptr(c_char)), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_SymDifference(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, ref arg3 : c_ptr(c_char), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_SymDifference(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, arg3 : c_ptr(c_ptr(c_char)), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Identity(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, ref arg3 : c_ptr(c_char), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Identity(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, arg3 : c_ptr(c_ptr(c_char)), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Update(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, ref arg3 : c_ptr(c_char), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Update(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, arg3 : c_ptr(c_ptr(c_char)), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Clip(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, ref arg3 : c_ptr(c_char), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Clip(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, arg3 : c_ptr(c_ptr(c_char)), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Erase(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, ref arg3 : c_ptr(c_char), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_L_Erase(arg0 : OGRLayerH, arg1 : OGRLayerH, arg2 : OGRLayerH, arg3 : c_ptr(c_ptr(c_char)), arg4 : GDALProgressFunc, arg5 : c_ptr(void)) : OGRErr;

extern proc OGR_DS_Destroy(arg0 : OGRDataSourceH) : void;

extern proc OGR_DS_GetName(arg0 : OGRDataSourceH) : c_ptrConst(c_char);

extern proc OGR_DS_GetLayerCount(arg0 : OGRDataSourceH) : c_int;

extern proc OGR_DS_GetLayer(arg0 : OGRDataSourceH, arg1 : c_int) : OGRLayerH;

extern proc OGR_DS_GetLayerByName(arg0 : OGRDataSourceH, arg1 : c_ptrConst(c_char)) : OGRLayerH;

extern proc OGR_DS_DeleteLayer(arg0 : OGRDataSourceH, arg1 : c_int) : OGRErr;

extern proc OGR_DS_GetDriver(arg0 : OGRDataSourceH) : OGRSFDriverH;

extern proc OGR_DS_CreateLayer(arg0 : OGRDataSourceH, arg1 : c_ptrConst(c_char), arg2 : OGRSpatialReferenceH, arg3 : OGRwkbGeometryType, ref arg4 : c_ptr(c_char)) : OGRLayerH;

extern proc OGR_DS_CreateLayer(arg0 : OGRDataSourceH, arg1 : c_ptrConst(c_char), arg2 : OGRSpatialReferenceH, arg3 : OGRwkbGeometryType, arg4 : c_ptr(c_ptr(c_char))) : OGRLayerH;

extern proc OGR_DS_CopyLayer(arg0 : OGRDataSourceH, arg1 : OGRLayerH, arg2 : c_ptrConst(c_char), ref arg3 : c_ptr(c_char)) : OGRLayerH;

extern proc OGR_DS_CopyLayer(arg0 : OGRDataSourceH, arg1 : OGRLayerH, arg2 : c_ptrConst(c_char), arg3 : c_ptr(c_ptr(c_char))) : OGRLayerH;

extern proc OGR_DS_TestCapability(arg0 : OGRDataSourceH, arg1 : c_ptrConst(c_char)) : c_int;

extern proc OGR_DS_ExecuteSQL(arg0 : OGRDataSourceH, arg1 : c_ptrConst(c_char), arg2 : OGRGeometryH, arg3 : c_ptrConst(c_char)) : OGRLayerH;

extern proc OGR_DS_ReleaseResultSet(arg0 : OGRDataSourceH, arg1 : OGRLayerH) : void;

extern proc OGR_DS_Reference(arg0 : OGRDataSourceH) : c_int;

extern proc OGR_DS_Dereference(arg0 : OGRDataSourceH) : c_int;

extern proc OGR_DS_GetRefCount(arg0 : OGRDataSourceH) : c_int;

extern proc OGR_DS_GetSummaryRefCount(arg0 : OGRDataSourceH) : c_int;

extern proc OGR_DS_SyncToDisk(arg0 : OGRDataSourceH) : OGRErr;

extern proc OGR_DS_GetStyleTable(arg0 : OGRDataSourceH) : OGRStyleTableH;

extern proc OGR_DS_SetStyleTableDirectly(arg0 : OGRDataSourceH, arg1 : OGRStyleTableH) : void;

extern proc OGR_DS_SetStyleTable(arg0 : OGRDataSourceH, arg1 : OGRStyleTableH) : void;

extern proc OGR_Dr_GetName(arg0 : OGRSFDriverH) : c_ptrConst(c_char);

extern proc OGR_Dr_Open(arg0 : OGRSFDriverH, arg1 : c_ptrConst(c_char), arg2 : c_int) : OGRDataSourceH;

extern proc OGR_Dr_TestCapability(arg0 : OGRSFDriverH, arg1 : c_ptrConst(c_char)) : c_int;

extern proc OGR_Dr_CreateDataSource(arg0 : OGRSFDriverH, arg1 : c_ptrConst(c_char), ref arg2 : c_ptr(c_char)) : OGRDataSourceH;

extern proc OGR_Dr_CreateDataSource(arg0 : OGRSFDriverH, arg1 : c_ptrConst(c_char), arg2 : c_ptr(c_ptr(c_char))) : OGRDataSourceH;

extern proc OGR_Dr_CopyDataSource(arg0 : OGRSFDriverH, arg1 : OGRDataSourceH, arg2 : c_ptrConst(c_char), ref arg3 : c_ptr(c_char)) : OGRDataSourceH;

extern proc OGR_Dr_CopyDataSource(arg0 : OGRSFDriverH, arg1 : OGRDataSourceH, arg2 : c_ptrConst(c_char), arg3 : c_ptr(c_ptr(c_char))) : OGRDataSourceH;

extern proc OGR_Dr_DeleteDataSource(arg0 : OGRSFDriverH, arg1 : c_ptrConst(c_char)) : OGRErr;

extern proc OGROpen(arg0 : c_ptrConst(c_char), arg1 : c_int, ref arg2 : OGRSFDriverH) : OGRDataSourceH;

extern proc OGROpen(arg0 : c_ptrConst(c_char), arg1 : c_int, arg2 : c_ptr(OGRSFDriverH)) : OGRDataSourceH;

extern proc OGROpenShared(arg0 : c_ptrConst(c_char), arg1 : c_int, ref arg2 : OGRSFDriverH) : OGRDataSourceH;

extern proc OGROpenShared(arg0 : c_ptrConst(c_char), arg1 : c_int, arg2 : c_ptr(OGRSFDriverH)) : OGRDataSourceH;

extern proc OGRReleaseDataSource(arg0 : OGRDataSourceH) : OGRErr;

extern proc OGRRegisterDriver(arg0 : OGRSFDriverH) : void;

extern proc OGRDeregisterDriver(arg0 : OGRSFDriverH) : void;

extern proc OGRGetDriverCount() : c_int;

extern proc OGRGetDriver(arg0 : c_int) : OGRSFDriverH;

extern proc OGRGetDriverByName(arg0 : c_ptrConst(c_char)) : OGRSFDriverH;

extern proc OGRGetOpenDSCount() : c_int;

extern proc OGRGetOpenDS(iDS : c_int) : OGRDataSourceH;

extern proc OGRRegisterAll() : void;

extern proc OGRCleanupAll() : void;

extern proc OGR_SM_Create(hStyleTable : OGRStyleTableH) : OGRStyleMgrH;

extern proc OGR_SM_Destroy(hSM : OGRStyleMgrH) : void;

extern proc OGR_SM_InitFromFeature(hSM : OGRStyleMgrH, hFeat : OGRFeatureH) : c_ptrConst(c_char);

extern proc OGR_SM_InitStyleString(hSM : OGRStyleMgrH, pszStyleString : c_ptrConst(c_char)) : c_int;

extern proc OGR_SM_GetPartCount(hSM : OGRStyleMgrH, pszStyleString : c_ptrConst(c_char)) : c_int;

extern proc OGR_SM_GetPart(hSM : OGRStyleMgrH, nPartId : c_int, pszStyleString : c_ptrConst(c_char)) : OGRStyleToolH;

extern proc OGR_SM_AddPart(hSM : OGRStyleMgrH, hST : OGRStyleToolH) : c_int;

extern proc OGR_SM_AddStyle(hSM : OGRStyleMgrH, pszStyleName : c_ptrConst(c_char), pszStyleString : c_ptrConst(c_char)) : c_int;

extern proc OGR_ST_Create(eClassId : OGRSTClassId) : OGRStyleToolH;

extern proc OGR_ST_Destroy(hST : OGRStyleToolH) : void;

extern proc OGR_ST_GetType(hST : OGRStyleToolH) : OGRSTClassId;

extern proc OGR_ST_GetUnit(hST : OGRStyleToolH) : OGRSTUnitId;

extern proc OGR_ST_SetUnit(hST : OGRStyleToolH, eUnit : OGRSTUnitId, dfGroundPaperScale : c_double) : void;

extern proc OGR_ST_GetParamStr(hST : OGRStyleToolH, eParam : c_int, ref bValueIsNull : c_int) : c_ptrConst(c_char);

extern proc OGR_ST_GetParamStr(hST : OGRStyleToolH, eParam : c_int, bValueIsNull : c_ptr(c_int)) : c_ptrConst(c_char);

extern proc OGR_ST_GetParamNum(hST : OGRStyleToolH, eParam : c_int, ref bValueIsNull : c_int) : c_int;

extern proc OGR_ST_GetParamNum(hST : OGRStyleToolH, eParam : c_int, bValueIsNull : c_ptr(c_int)) : c_int;

extern proc OGR_ST_GetParamDbl(hST : OGRStyleToolH, eParam : c_int, ref bValueIsNull : c_int) : c_double;

extern proc OGR_ST_GetParamDbl(hST : OGRStyleToolH, eParam : c_int, bValueIsNull : c_ptr(c_int)) : c_double;

extern proc OGR_ST_SetParamStr(hST : OGRStyleToolH, eParam : c_int, pszValue : c_ptrConst(c_char)) : void;

extern proc OGR_ST_SetParamNum(hST : OGRStyleToolH, eParam : c_int, nValue : c_int) : void;

extern proc OGR_ST_SetParamDbl(hST : OGRStyleToolH, eParam : c_int, dfValue : c_double) : void;

extern proc OGR_ST_GetStyleString(hST : OGRStyleToolH) : c_ptrConst(c_char);

extern proc OGR_ST_GetRGBFromString(hST : OGRStyleToolH, pszColor : c_ptrConst(c_char), ref pnRed : c_int, ref pnGreen : c_int, ref pnBlue : c_int, ref pnAlpha : c_int) : c_int;

extern proc OGR_ST_GetRGBFromString(hST : OGRStyleToolH, pszColor : c_ptrConst(c_char), pnRed : c_ptr(c_int), pnGreen : c_ptr(c_int), pnBlue : c_ptr(c_int), pnAlpha : c_ptr(c_int)) : c_int;

extern proc OGR_STBL_Create() : OGRStyleTableH;

extern proc OGR_STBL_Destroy(hSTBL : OGRStyleTableH) : void;

extern proc OGR_STBL_AddStyle(hStyleTable : OGRStyleTableH, pszName : c_ptrConst(c_char), pszStyleString : c_ptrConst(c_char)) : c_int;

extern proc OGR_STBL_SaveStyleTable(hStyleTable : OGRStyleTableH, pszFilename : c_ptrConst(c_char)) : c_int;

extern proc OGR_STBL_LoadStyleTable(hStyleTable : OGRStyleTableH, pszFilename : c_ptrConst(c_char)) : c_int;

extern proc OGR_STBL_Find(hStyleTable : OGRStyleTableH, pszName : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc OGR_STBL_ResetStyleStringReading(hStyleTable : OGRStyleTableH) : void;

extern proc OGR_STBL_GetNextStyle(hStyleTable : OGRStyleTableH) : c_ptrConst(c_char);

extern proc OGR_STBL_GetLastStyleName(hStyleTable : OGRStyleTableH) : c_ptrConst(c_char);

extern proc GDALGetDataTypeSize(arg0 : GDALDataType) : c_int;

extern proc GDALGetDataTypeSizeBits(eDataType : GDALDataType) : c_int;

extern proc GDALGetDataTypeSizeBytes(arg0 : GDALDataType) : c_int;

extern proc GDALDataTypeIsComplex(arg0 : GDALDataType) : c_int;

extern proc GDALDataTypeIsInteger(arg0 : GDALDataType) : c_int;

extern proc GDALDataTypeIsFloating(arg0 : GDALDataType) : c_int;

extern proc GDALDataTypeIsSigned(arg0 : GDALDataType) : c_int;

extern proc GDALGetDataTypeName(arg0 : GDALDataType) : c_ptrConst(c_char);

extern proc GDALGetDataTypeByName(arg0 : c_ptrConst(c_char)) : GDALDataType;

extern proc GDALDataTypeUnion(arg0 : GDALDataType, arg1 : GDALDataType) : GDALDataType;

extern proc GDALDataTypeUnionWithValue(eDT : GDALDataType, dValue : c_double, bComplex : c_int) : GDALDataType;

extern proc GDALFindDataType(nBits : c_int, bSigned : c_int, bFloating : c_int, bComplex : c_int) : GDALDataType;

extern proc GDALFindDataTypeForValue(dValue : c_double, bComplex : c_int) : GDALDataType;

extern proc GDALAdjustValueToDataType(eDT : GDALDataType, dfValue : c_double, ref pbClamped : c_int, ref pbRounded : c_int) : c_double;

extern proc GDALAdjustValueToDataType(eDT : GDALDataType, dfValue : c_double, pbClamped : c_ptr(c_int), pbRounded : c_ptr(c_int)) : c_double;

extern proc GDALGetNonComplexDataType(arg0 : GDALDataType) : GDALDataType;

extern proc GDALDataTypeIsConversionLossy(eTypeFrom : GDALDataType, eTypeTo : GDALDataType) : c_int;

extern proc GDALGetAsyncStatusTypeName(arg0 : GDALAsyncStatusType) : c_ptrConst(c_char);

extern proc GDALGetAsyncStatusTypeByName(arg0 : c_ptrConst(c_char)) : GDALAsyncStatusType;

extern proc GDALGetColorInterpretationName(arg0 : GDALColorInterp) : c_ptrConst(c_char);

extern proc GDALGetColorInterpretationByName(pszName : c_ptrConst(c_char)) : GDALColorInterp;

extern proc GDALGetPaletteInterpretationName(arg0 : GDALPaletteInterp) : c_ptrConst(c_char);

extern proc GDALAllRegister() : void;

extern proc GDALRegisterPlugins() : void;

extern proc GDALRegisterPlugin(name : c_ptrConst(c_char)) : CPLErr;

extern proc GDALCreate(hDriver : GDALDriverH, arg1 : c_ptrConst(c_char), arg2 : c_int, arg3 : c_int, arg4 : c_int, arg5 : GDALDataType, arg6 : CSLConstList) : GDALDatasetH;

extern proc GDALCreateCopy(arg0 : GDALDriverH, arg1 : c_ptrConst(c_char), arg2 : GDALDatasetH, arg3 : c_int, arg4 : CSLConstList, arg5 : GDALProgressFunc, arg6 : c_ptr(void)) : GDALDatasetH;

extern proc GDALIdentifyDriver(pszFilename : c_ptrConst(c_char), papszFileList : CSLConstList) : GDALDriverH;

extern proc GDALIdentifyDriverEx(pszFilename : c_ptrConst(c_char), nIdentifyFlags : c_uint, const ref papszAllowedDrivers : c_ptrConst(c_char), const ref papszFileList : c_ptrConst(c_char)) : GDALDriverH;

extern proc GDALIdentifyDriverEx(pszFilename : c_ptrConst(c_char), nIdentifyFlags : c_uint, papszAllowedDrivers : c_ptrConst(c_ptrConst(c_char)), papszFileList : c_ptrConst(c_ptrConst(c_char))) : GDALDriverH;

extern proc GDALOpen(pszFilename : c_ptrConst(c_char), eAccess : GDALAccess) : GDALDatasetH;

extern proc GDALOpenShared(arg0 : c_ptrConst(c_char), arg1 : GDALAccess) : GDALDatasetH;

extern proc GDALOpenEx(pszFilename : c_ptrConst(c_char), nOpenFlags : c_uint, const ref papszAllowedDrivers : c_ptrConst(c_char), const ref papszOpenOptions : c_ptrConst(c_char), const ref papszSiblingFiles : c_ptrConst(c_char)) : GDALDatasetH;

extern proc GDALOpenEx(pszFilename : c_ptrConst(c_char), nOpenFlags : c_uint, papszAllowedDrivers : c_ptrConst(c_ptrConst(c_char)), papszOpenOptions : c_ptrConst(c_ptrConst(c_char)), papszSiblingFiles : c_ptrConst(c_ptrConst(c_char))) : GDALDatasetH;

extern proc GDALDumpOpenDatasets(ref arg0 : c_FILE) : c_int;

extern proc GDALDumpOpenDatasets(arg0 : c_ptr(c_FILE)) : c_int;

extern proc GDALGetDriverByName(arg0 : c_ptrConst(c_char)) : GDALDriverH;

extern proc GDALGetDriverCount() : c_int;

extern proc GDALGetDriver(arg0 : c_int) : GDALDriverH;

extern proc GDALCreateDriver() : GDALDriverH;

extern proc GDALDestroyDriver(arg0 : GDALDriverH) : void;

extern proc GDALRegisterDriver(arg0 : GDALDriverH) : c_int;

extern proc GDALDeregisterDriver(arg0 : GDALDriverH) : void;

extern proc GDALDestroyDriverManager() : void;

extern proc GDALDestroy() : void;

extern proc GDALDeleteDataset(arg0 : GDALDriverH, arg1 : c_ptrConst(c_char)) : CPLErr;

extern proc GDALRenameDataset(arg0 : GDALDriverH, pszNewName : c_ptrConst(c_char), pszOldName : c_ptrConst(c_char)) : CPLErr;

extern proc GDALCopyDatasetFiles(arg0 : GDALDriverH, pszNewName : c_ptrConst(c_char), pszOldName : c_ptrConst(c_char)) : CPLErr;

extern proc GDALValidateCreationOptions(arg0 : GDALDriverH, papszCreationOptions : CSLConstList) : c_int;

extern proc GDALGetOutputDriversForDatasetName(pszDestFilename : c_ptrConst(c_char), nFlagRasterVector : c_int, bSingleMatch : bool, bEmitWarning : bool) : c_ptr(c_ptr(c_char));

extern proc GDALGetDriverShortName(arg0 : GDALDriverH) : c_ptrConst(c_char);

extern proc GDALGetDriverLongName(arg0 : GDALDriverH) : c_ptrConst(c_char);

extern proc GDALGetDriverHelpTopic(arg0 : GDALDriverH) : c_ptrConst(c_char);

extern proc GDALGetDriverCreationOptionList(arg0 : GDALDriverH) : c_ptrConst(c_char);

extern proc GDALInitGCPs(arg0 : c_int, ref arg1 : GDAL_GCP) : void;

extern proc GDALInitGCPs(arg0 : c_int, arg1 : c_ptr(GDAL_GCP)) : void;

extern proc GDALDeinitGCPs(arg0 : c_int, ref arg1 : GDAL_GCP) : void;

extern proc GDALDeinitGCPs(arg0 : c_int, arg1 : c_ptr(GDAL_GCP)) : void;

extern proc GDALDuplicateGCPs(arg0 : c_int, const ref arg1 : GDAL_GCP) : c_ptr(GDAL_GCP);

extern proc GDALDuplicateGCPs(arg0 : c_int, arg1 : c_ptrConst(GDAL_GCP)) : c_ptr(GDAL_GCP);

extern proc GDALGCPsToGeoTransform(nGCPCount : c_int, const ref pasGCPs : GDAL_GCP, ref padfGeoTransform : c_double, bApproxOK : c_int) : c_int;

extern proc GDALGCPsToGeoTransform(nGCPCount : c_int, pasGCPs : c_ptrConst(GDAL_GCP), padfGeoTransform : c_ptr(c_double), bApproxOK : c_int) : c_int;

extern proc GDALInvGeoTransform(const ref padfGeoTransformIn : c_double, ref padfInvGeoTransformOut : c_double) : c_int;

extern proc GDALInvGeoTransform(padfGeoTransformIn : c_ptrConst(c_double), padfInvGeoTransformOut : c_ptr(c_double)) : c_int;

extern proc GDALApplyGeoTransform(const ref arg0 : c_double, arg1 : c_double, arg2 : c_double, ref arg3 : c_double, ref arg4 : c_double) : void;

extern proc GDALApplyGeoTransform(arg0 : c_ptrConst(c_double), arg1 : c_double, arg2 : c_double, arg3 : c_ptr(c_double), arg4 : c_ptr(c_double)) : void;

extern proc GDALComposeGeoTransforms(const ref padfGeoTransform1 : c_double, const ref padfGeoTransform2 : c_double, ref padfGeoTransformOut : c_double) : void;

extern proc GDALComposeGeoTransforms(padfGeoTransform1 : c_ptrConst(c_double), padfGeoTransform2 : c_ptrConst(c_double), padfGeoTransformOut : c_ptr(c_double)) : void;

extern proc GDALGetMetadataDomainList(hObject : GDALMajorObjectH) : c_ptr(c_ptr(c_char));

extern proc GDALGetMetadata(arg0 : GDALMajorObjectH, arg1 : c_ptrConst(c_char)) : c_ptr(c_ptr(c_char));

extern proc GDALSetMetadata(arg0 : GDALMajorObjectH, arg1 : CSLConstList, arg2 : c_ptrConst(c_char)) : CPLErr;

extern proc GDALGetMetadataItem(arg0 : GDALMajorObjectH, arg1 : c_ptrConst(c_char), arg2 : c_ptrConst(c_char)) : c_ptrConst(c_char);

extern proc GDALSetMetadataItem(arg0 : GDALMajorObjectH, arg1 : c_ptrConst(c_char), arg2 : c_ptrConst(c_char), arg3 : c_ptrConst(c_char)) : CPLErr;

extern proc GDALGetDescription(arg0 : GDALMajorObjectH) : c_ptrConst(c_char);

extern proc GDALSetDescription(arg0 : GDALMajorObjectH, arg1 : c_ptrConst(c_char)) : void;

extern proc GDALGetDatasetDriver(arg0 : GDALDatasetH) : GDALDriverH;

extern proc GDALGetFileList(arg0 : GDALDatasetH) : c_ptr(c_ptr(c_char));

extern proc GDALClose(arg0 : GDALDatasetH) : CPLErr;

extern proc GDALGetRasterXSize(arg0 : GDALDatasetH) : c_int;

extern proc GDALGetRasterYSize(arg0 : GDALDatasetH) : c_int;

extern proc GDALGetRasterCount(arg0 : GDALDatasetH) : c_int;

extern proc GDALGetRasterBand(arg0 : GDALDatasetH, arg1 : c_int) : GDALRasterBandH;

extern proc GDALAddBand(hDS : GDALDatasetH, eType : GDALDataType, papszOptions : CSLConstList) : CPLErr;

extern proc GDALBeginAsyncReader(hDS : GDALDatasetH, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, pBuf : c_ptr(void), nBufXSize : c_int, nBufYSize : c_int, eBufType : GDALDataType, nBandCount : c_int, ref panBandMap : c_int, nPixelSpace : c_int, nLineSpace : c_int, nBandSpace : c_int, papszOptions : CSLConstList) : GDALAsyncReaderH;

extern proc GDALBeginAsyncReader(hDS : GDALDatasetH, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, pBuf : c_ptr(void), nBufXSize : c_int, nBufYSize : c_int, eBufType : GDALDataType, nBandCount : c_int, panBandMap : c_ptr(c_int), nPixelSpace : c_int, nLineSpace : c_int, nBandSpace : c_int, papszOptions : CSLConstList) : GDALAsyncReaderH;

extern proc GDALEndAsyncReader(hDS : GDALDatasetH, hAsynchReaderH : GDALAsyncReaderH) : void;

extern proc GDALDatasetRasterIO(hDS : GDALDatasetH, eRWFlag : GDALRWFlag, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, pBuffer : c_ptr(void), nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, nBandCount : c_int, ref panBandCount : c_int, nPixelSpace : c_int, nLineSpace : c_int, nBandSpace : c_int) : CPLErr;

extern proc GDALDatasetRasterIO(hDS : GDALDatasetH, eRWFlag : GDALRWFlag, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, pBuffer : c_ptr(void), nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, nBandCount : c_int, panBandCount : c_ptr(c_int), nPixelSpace : c_int, nLineSpace : c_int, nBandSpace : c_int) : CPLErr;

extern proc GDALDatasetRasterIOEx(hDS : GDALDatasetH, eRWFlag : GDALRWFlag, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, pBuffer : c_ptr(void), nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, nBandCount : c_int, ref panBandCount : c_int, nPixelSpace : GSpacing, nLineSpace : GSpacing, nBandSpace : GSpacing, ref psExtraArg : GDALRasterIOExtraArg) : CPLErr;

extern proc GDALDatasetRasterIOEx(hDS : GDALDatasetH, eRWFlag : GDALRWFlag, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, pBuffer : c_ptr(void), nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, nBandCount : c_int, panBandCount : c_ptr(c_int), nPixelSpace : GSpacing, nLineSpace : GSpacing, nBandSpace : GSpacing, psExtraArg : c_ptr(GDALRasterIOExtraArg)) : CPLErr;

extern proc GDALDatasetAdviseRead(hDS : GDALDatasetH, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, nBandCount : c_int, ref panBandCount : c_int, papszOptions : CSLConstList) : CPLErr;

extern proc GDALDatasetAdviseRead(hDS : GDALDatasetH, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, nBandCount : c_int, panBandCount : c_ptr(c_int), papszOptions : CSLConstList) : CPLErr;

extern proc GDALDatasetGetCompressionFormats(hDS : GDALDatasetH, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nBandCount : c_int, const ref panBandList : c_int) : c_ptr(c_ptr(c_char));

extern proc GDALDatasetGetCompressionFormats(hDS : GDALDatasetH, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nBandCount : c_int, panBandList : c_ptrConst(c_int)) : c_ptr(c_ptr(c_char));

extern proc GDALDatasetReadCompressedData(hDS : GDALDatasetH, pszFormat : c_ptrConst(c_char), nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nBandCount : c_int, const ref panBandList : c_int, ref ppBuffer : c_ptr(void), ref pnBufferSize : c_size_t, ref ppszDetailedFormat : c_ptr(c_char)) : CPLErr;

extern proc GDALDatasetReadCompressedData(hDS : GDALDatasetH, pszFormat : c_ptrConst(c_char), nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nBandCount : c_int, panBandList : c_ptrConst(c_int), ppBuffer : c_ptr(c_ptr(void)), pnBufferSize : c_ptr(c_size_t), ppszDetailedFormat : c_ptr(c_ptr(c_char))) : CPLErr;

extern proc GDALGetProjectionRef(arg0 : GDALDatasetH) : c_ptrConst(c_char);

extern proc GDALGetSpatialRef(arg0 : GDALDatasetH) : OGRSpatialReferenceH;

extern proc GDALSetProjection(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char)) : CPLErr;

extern proc GDALSetSpatialRef(arg0 : GDALDatasetH, arg1 : OGRSpatialReferenceH) : CPLErr;

extern proc GDALGetGeoTransform(arg0 : GDALDatasetH, ref arg1 : c_double) : CPLErr;

extern proc GDALGetGeoTransform(arg0 : GDALDatasetH, arg1 : c_ptr(c_double)) : CPLErr;

extern proc GDALSetGeoTransform(arg0 : GDALDatasetH, ref arg1 : c_double) : CPLErr;

extern proc GDALSetGeoTransform(arg0 : GDALDatasetH, arg1 : c_ptr(c_double)) : CPLErr;

extern proc GDALGetGCPCount(arg0 : GDALDatasetH) : c_int;

extern proc GDALGetGCPProjection(arg0 : GDALDatasetH) : c_ptrConst(c_char);

extern proc GDALGetGCPSpatialRef(arg0 : GDALDatasetH) : OGRSpatialReferenceH;

extern proc GDALGetGCPs(arg0 : GDALDatasetH) : c_ptrConst(GDAL_GCP);

extern proc GDALSetGCPs(arg0 : GDALDatasetH, arg1 : c_int, const ref arg2 : GDAL_GCP, arg3 : c_ptrConst(c_char)) : CPLErr;

extern proc GDALSetGCPs(arg0 : GDALDatasetH, arg1 : c_int, arg2 : c_ptrConst(GDAL_GCP), arg3 : c_ptrConst(c_char)) : CPLErr;

extern proc GDALSetGCPs2(arg0 : GDALDatasetH, arg1 : c_int, const ref arg2 : GDAL_GCP, arg3 : OGRSpatialReferenceH) : CPLErr;

extern proc GDALSetGCPs2(arg0 : GDALDatasetH, arg1 : c_int, arg2 : c_ptrConst(GDAL_GCP), arg3 : OGRSpatialReferenceH) : CPLErr;

extern proc GDALGetInternalHandle(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char)) : c_ptr(void);

extern proc GDALReferenceDataset(arg0 : GDALDatasetH) : c_int;

extern proc GDALDereferenceDataset(arg0 : GDALDatasetH) : c_int;

extern proc GDALReleaseDataset(arg0 : GDALDatasetH) : c_int;

extern proc GDALBuildOverviews(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char), arg2 : c_int, const ref arg3 : c_int, arg4 : c_int, const ref arg5 : c_int, arg6 : GDALProgressFunc, arg7 : c_ptr(void)) : CPLErr;

extern proc GDALBuildOverviews(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char), arg2 : c_int, arg3 : c_ptrConst(c_int), arg4 : c_int, arg5 : c_ptrConst(c_int), arg6 : GDALProgressFunc, arg7 : c_ptr(void)) : CPLErr;

extern proc GDALBuildOverviewsEx(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char), arg2 : c_int, const ref arg3 : c_int, arg4 : c_int, const ref arg5 : c_int, arg6 : GDALProgressFunc, arg7 : c_ptr(void), papszOptions : CSLConstList) : CPLErr;

extern proc GDALBuildOverviewsEx(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char), arg2 : c_int, arg3 : c_ptrConst(c_int), arg4 : c_int, arg5 : c_ptrConst(c_int), arg6 : GDALProgressFunc, arg7 : c_ptr(void), papszOptions : CSLConstList) : CPLErr;

extern proc GDALGetOpenDatasets(ref hDS : c_ptr(GDALDatasetH), ref pnCount : c_int) : void;

extern proc GDALGetOpenDatasets(hDS : c_ptr(c_ptr(GDALDatasetH)), pnCount : c_ptr(c_int)) : void;

extern proc GDALGetAccess(hDS : GDALDatasetH) : c_int;

extern proc GDALFlushCache(hDS : GDALDatasetH) : CPLErr;

extern proc GDALDropCache(hDS : GDALDatasetH) : CPLErr;

extern proc GDALCreateDatasetMaskBand(hDS : GDALDatasetH, nFlags : c_int) : CPLErr;

extern proc GDALDatasetCopyWholeRaster(hSrcDS : GDALDatasetH, hDstDS : GDALDatasetH, papszOptions : CSLConstList, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALRasterBandCopyWholeRaster(hSrcBand : GDALRasterBandH, hDstBand : GDALRasterBandH, const ref constpapszOptions : c_ptrConst(c_char), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALRasterBandCopyWholeRaster(hSrcBand : GDALRasterBandH, hDstBand : GDALRasterBandH, constpapszOptions : c_ptrConst(c_ptrConst(c_char)), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALRegenerateOverviews(hSrcBand : GDALRasterBandH, nOverviewCount : c_int, ref pahOverviewBands : GDALRasterBandH, pszResampling : c_ptrConst(c_char), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALRegenerateOverviews(hSrcBand : GDALRasterBandH, nOverviewCount : c_int, pahOverviewBands : c_ptr(GDALRasterBandH), pszResampling : c_ptrConst(c_char), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALRegenerateOverviewsEx(hSrcBand : GDALRasterBandH, nOverviewCount : c_int, ref pahOverviewBands : GDALRasterBandH, pszResampling : c_ptrConst(c_char), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void), papszOptions : CSLConstList) : CPLErr;

extern proc GDALRegenerateOverviewsEx(hSrcBand : GDALRasterBandH, nOverviewCount : c_int, pahOverviewBands : c_ptr(GDALRasterBandH), pszResampling : c_ptrConst(c_char), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void), papszOptions : CSLConstList) : CPLErr;

extern proc GDALDatasetGetLayerCount(arg0 : GDALDatasetH) : c_int;

extern proc GDALDatasetGetLayer(arg0 : GDALDatasetH, arg1 : c_int) : OGRLayerH;

extern proc OGR_L_GetDataset(hLayer : OGRLayerH) : GDALDatasetH;

extern proc GDALDatasetGetLayerByName(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char)) : OGRLayerH;

extern proc GDALDatasetIsLayerPrivate(arg0 : GDALDatasetH, arg1 : c_int) : c_int;

extern proc GDALDatasetDeleteLayer(arg0 : GDALDatasetH, arg1 : c_int) : OGRErr;

extern proc GDALDatasetCreateLayer(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char), arg2 : OGRSpatialReferenceH, arg3 : OGRwkbGeometryType, arg4 : CSLConstList) : OGRLayerH;

extern proc GDALDatasetCreateLayerFromGeomFieldDefn(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char), arg2 : OGRGeomFieldDefnH, arg3 : CSLConstList) : OGRLayerH;

extern proc GDALDatasetCopyLayer(arg0 : GDALDatasetH, arg1 : OGRLayerH, arg2 : c_ptrConst(c_char), arg3 : CSLConstList) : OGRLayerH;

extern proc GDALDatasetResetReading(arg0 : GDALDatasetH) : void;

extern proc GDALDatasetGetNextFeature(hDS : GDALDatasetH, ref phBelongingLayer : OGRLayerH, ref pdfProgressPct : c_double, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : OGRFeatureH;

extern proc GDALDatasetGetNextFeature(hDS : GDALDatasetH, phBelongingLayer : c_ptr(OGRLayerH), pdfProgressPct : c_ptr(c_double), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : OGRFeatureH;

extern proc GDALDatasetTestCapability(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char)) : c_int;

extern proc GDALDatasetExecuteSQL(arg0 : GDALDatasetH, arg1 : c_ptrConst(c_char), arg2 : OGRGeometryH, arg3 : c_ptrConst(c_char)) : OGRLayerH;

extern proc GDALDatasetAbortSQL(arg0 : GDALDatasetH) : OGRErr;

extern proc GDALDatasetReleaseResultSet(arg0 : GDALDatasetH, arg1 : OGRLayerH) : void;

extern proc GDALDatasetGetStyleTable(arg0 : GDALDatasetH) : OGRStyleTableH;

extern proc GDALDatasetSetStyleTableDirectly(arg0 : GDALDatasetH, arg1 : OGRStyleTableH) : void;

extern proc GDALDatasetSetStyleTable(arg0 : GDALDatasetH, arg1 : OGRStyleTableH) : void;

extern proc GDALDatasetStartTransaction(hDS : GDALDatasetH, bForce : c_int) : OGRErr;

extern proc GDALDatasetCommitTransaction(hDS : GDALDatasetH) : OGRErr;

extern proc GDALDatasetRollbackTransaction(hDS : GDALDatasetH) : OGRErr;

extern proc GDALDatasetClearStatistics(hDS : GDALDatasetH) : void;

extern proc GDALDatasetGetFieldDomainNames(arg0 : GDALDatasetH, arg1 : CSLConstList) : c_ptr(c_ptr(c_char));

extern proc GDALDatasetGetFieldDomain(hDS : GDALDatasetH, pszName : c_ptrConst(c_char)) : OGRFieldDomainH;

extern proc GDALDatasetAddFieldDomain(hDS : GDALDatasetH, hFieldDomain : OGRFieldDomainH, ref ppszFailureReason : c_ptr(c_char)) : bool;

extern proc GDALDatasetAddFieldDomain(hDS : GDALDatasetH, hFieldDomain : OGRFieldDomainH, ppszFailureReason : c_ptr(c_ptr(c_char))) : bool;

extern proc GDALDatasetDeleteFieldDomain(hDS : GDALDatasetH, pszName : c_ptrConst(c_char), ref ppszFailureReason : c_ptr(c_char)) : bool;

extern proc GDALDatasetDeleteFieldDomain(hDS : GDALDatasetH, pszName : c_ptrConst(c_char), ppszFailureReason : c_ptr(c_ptr(c_char))) : bool;

extern proc GDALDatasetUpdateFieldDomain(hDS : GDALDatasetH, hFieldDomain : OGRFieldDomainH, ref ppszFailureReason : c_ptr(c_char)) : bool;

extern proc GDALDatasetUpdateFieldDomain(hDS : GDALDatasetH, hFieldDomain : OGRFieldDomainH, ppszFailureReason : c_ptr(c_ptr(c_char))) : bool;

extern proc GDALDatasetGetRelationshipNames(arg0 : GDALDatasetH, arg1 : CSLConstList) : c_ptr(c_ptr(c_char));

extern proc GDALDatasetGetRelationship(hDS : GDALDatasetH, pszName : c_ptrConst(c_char)) : GDALRelationshipH;

extern proc GDALDatasetAddRelationship(hDS : GDALDatasetH, hRelationship : GDALRelationshipH, ref ppszFailureReason : c_ptr(c_char)) : bool;

extern proc GDALDatasetAddRelationship(hDS : GDALDatasetH, hRelationship : GDALRelationshipH, ppszFailureReason : c_ptr(c_ptr(c_char))) : bool;

extern proc GDALDatasetDeleteRelationship(hDS : GDALDatasetH, pszName : c_ptrConst(c_char), ref ppszFailureReason : c_ptr(c_char)) : bool;

extern proc GDALDatasetDeleteRelationship(hDS : GDALDatasetH, pszName : c_ptrConst(c_char), ppszFailureReason : c_ptr(c_ptr(c_char))) : bool;

extern proc GDALDatasetUpdateRelationship(hDS : GDALDatasetH, hRelationship : GDALRelationshipH, ref ppszFailureReason : c_ptr(c_char)) : bool;

extern proc GDALDatasetUpdateRelationship(hDS : GDALDatasetH, hRelationship : GDALRelationshipH, ppszFailureReason : c_ptr(c_ptr(c_char))) : bool;

extern proc GDALDatasetSetQueryLoggerFunc(hDS : GDALDatasetH, pfnQueryLoggerFunc : GDALQueryLoggerFunc, poQueryLoggerArg : c_ptr(void)) : bool;

extern proc GDALGetSubdatasetInfo(pszFileName : c_ptrConst(c_char)) : GDALSubdatasetInfoH;

extern proc GDALSubdatasetInfoGetPathComponent(hInfo : GDALSubdatasetInfoH) : c_ptr(c_char);

extern proc GDALSubdatasetInfoGetSubdatasetComponent(hInfo : GDALSubdatasetInfoH) : c_ptr(c_char);

extern proc GDALSubdatasetInfoModifyPathComponent(hInfo : GDALSubdatasetInfoH, pszNewPath : c_ptrConst(c_char)) : c_ptr(c_char);

extern proc GDALDestroySubdatasetInfo(hInfo : GDALSubdatasetInfoH) : void;

extern proc GDALGetRasterDataType(arg0 : GDALRasterBandH) : GDALDataType;

extern proc GDALGetBlockSize(arg0 : GDALRasterBandH, ref pnXSize : c_int, ref pnYSize : c_int) : void;

extern proc GDALGetBlockSize(arg0 : GDALRasterBandH, pnXSize : c_ptr(c_int), pnYSize : c_ptr(c_int)) : void;

extern proc GDALGetActualBlockSize(arg0 : GDALRasterBandH, nXBlockOff : c_int, nYBlockOff : c_int, ref pnXValid : c_int, ref pnYValid : c_int) : CPLErr;

extern proc GDALGetActualBlockSize(arg0 : GDALRasterBandH, nXBlockOff : c_int, nYBlockOff : c_int, pnXValid : c_ptr(c_int), pnYValid : c_ptr(c_int)) : CPLErr;

extern proc GDALRasterAdviseRead(hRB : GDALRasterBandH, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, papszOptions : CSLConstList) : CPLErr;

extern proc GDALRasterIO(hRBand : GDALRasterBandH, eRWFlag : GDALRWFlag, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, pBuffer : c_ptr(void), nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, nPixelSpace : c_int, nLineSpace : c_int) : CPLErr;

extern proc GDALRasterIOEx(hRBand : GDALRasterBandH, eRWFlag : GDALRWFlag, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, pBuffer : c_ptr(void), nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, nPixelSpace : GSpacing, nLineSpace : GSpacing, ref psExtraArg : GDALRasterIOExtraArg) : CPLErr;

extern proc GDALRasterIOEx(hRBand : GDALRasterBandH, eRWFlag : GDALRWFlag, nDSXOff : c_int, nDSYOff : c_int, nDSXSize : c_int, nDSYSize : c_int, pBuffer : c_ptr(void), nBXSize : c_int, nBYSize : c_int, eBDataType : GDALDataType, nPixelSpace : GSpacing, nLineSpace : GSpacing, psExtraArg : c_ptr(GDALRasterIOExtraArg)) : CPLErr;

extern proc GDALReadBlock(arg0 : GDALRasterBandH, arg1 : c_int, arg2 : c_int, arg3 : c_ptr(void)) : CPLErr;

extern proc GDALWriteBlock(arg0 : GDALRasterBandH, arg1 : c_int, arg2 : c_int, arg3 : c_ptr(void)) : CPLErr;

extern proc GDALGetRasterBandXSize(arg0 : GDALRasterBandH) : c_int;

extern proc GDALGetRasterBandYSize(arg0 : GDALRasterBandH) : c_int;

extern proc GDALGetRasterAccess(arg0 : GDALRasterBandH) : GDALAccess;

extern proc GDALGetBandNumber(arg0 : GDALRasterBandH) : c_int;

extern proc GDALGetBandDataset(arg0 : GDALRasterBandH) : GDALDatasetH;

extern proc GDALGetRasterColorInterpretation(arg0 : GDALRasterBandH) : GDALColorInterp;

extern proc GDALSetRasterColorInterpretation(arg0 : GDALRasterBandH, arg1 : GDALColorInterp) : CPLErr;

extern proc GDALGetRasterColorTable(arg0 : GDALRasterBandH) : GDALColorTableH;

extern proc GDALSetRasterColorTable(arg0 : GDALRasterBandH, arg1 : GDALColorTableH) : CPLErr;

extern proc GDALHasArbitraryOverviews(arg0 : GDALRasterBandH) : c_int;

extern proc GDALGetOverviewCount(arg0 : GDALRasterBandH) : c_int;

extern proc GDALGetOverview(arg0 : GDALRasterBandH, arg1 : c_int) : GDALRasterBandH;

extern proc GDALGetRasterNoDataValue(arg0 : GDALRasterBandH, ref arg1 : c_int) : c_double;

extern proc GDALGetRasterNoDataValue(arg0 : GDALRasterBandH, arg1 : c_ptr(c_int)) : c_double;

extern proc GDALGetRasterNoDataValueAsInt64(arg0 : GDALRasterBandH, ref arg1 : c_int) : int(64);

extern proc GDALGetRasterNoDataValueAsInt64(arg0 : GDALRasterBandH, arg1 : c_ptr(c_int)) : int(64);

extern proc GDALGetRasterNoDataValueAsUInt64(arg0 : GDALRasterBandH, ref arg1 : c_int) : uint(64);

extern proc GDALGetRasterNoDataValueAsUInt64(arg0 : GDALRasterBandH, arg1 : c_ptr(c_int)) : uint(64);

extern proc GDALSetRasterNoDataValue(arg0 : GDALRasterBandH, arg1 : c_double) : CPLErr;

extern proc GDALSetRasterNoDataValueAsInt64(arg0 : GDALRasterBandH, arg1 : int(64)) : CPLErr;

extern proc GDALSetRasterNoDataValueAsUInt64(arg0 : GDALRasterBandH, arg1 : uint(64)) : CPLErr;

extern proc GDALDeleteRasterNoDataValue(arg0 : GDALRasterBandH) : CPLErr;

extern proc GDALGetRasterCategoryNames(arg0 : GDALRasterBandH) : c_ptr(c_ptr(c_char));

extern proc GDALSetRasterCategoryNames(arg0 : GDALRasterBandH, arg1 : CSLConstList) : CPLErr;

extern proc GDALGetRasterMinimum(arg0 : GDALRasterBandH, ref pbSuccess : c_int) : c_double;

extern proc GDALGetRasterMinimum(arg0 : GDALRasterBandH, pbSuccess : c_ptr(c_int)) : c_double;

extern proc GDALGetRasterMaximum(arg0 : GDALRasterBandH, ref pbSuccess : c_int) : c_double;

extern proc GDALGetRasterMaximum(arg0 : GDALRasterBandH, pbSuccess : c_ptr(c_int)) : c_double;

extern proc GDALGetRasterStatistics(arg0 : GDALRasterBandH, bApproxOK : c_int, bForce : c_int, ref pdfMin : c_double, ref pdfMax : c_double, ref pdfMean : c_double, ref pdfStdDev : c_double) : CPLErr;

extern proc GDALGetRasterStatistics(arg0 : GDALRasterBandH, bApproxOK : c_int, bForce : c_int, pdfMin : c_ptr(c_double), pdfMax : c_ptr(c_double), pdfMean : c_ptr(c_double), pdfStdDev : c_ptr(c_double)) : CPLErr;

extern proc GDALComputeRasterStatistics(arg0 : GDALRasterBandH, bApproxOK : c_int, ref pdfMin : c_double, ref pdfMax : c_double, ref pdfMean : c_double, ref pdfStdDev : c_double, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALComputeRasterStatistics(arg0 : GDALRasterBandH, bApproxOK : c_int, pdfMin : c_ptr(c_double), pdfMax : c_ptr(c_double), pdfMean : c_ptr(c_double), pdfStdDev : c_ptr(c_double), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALSetRasterStatistics(hBand : GDALRasterBandH, dfMin : c_double, dfMax : c_double, dfMean : c_double, dfStdDev : c_double) : CPLErr;

extern proc GDALRasterBandAsMDArray(arg0 : GDALRasterBandH) : GDALMDArrayH;

extern proc GDALGetRasterUnitType(arg0 : GDALRasterBandH) : c_ptrConst(c_char);

extern proc GDALSetRasterUnitType(hBand : GDALRasterBandH, pszNewValue : c_ptrConst(c_char)) : CPLErr;

extern proc GDALGetRasterOffset(arg0 : GDALRasterBandH, ref pbSuccess : c_int) : c_double;

extern proc GDALGetRasterOffset(arg0 : GDALRasterBandH, pbSuccess : c_ptr(c_int)) : c_double;

extern proc GDALSetRasterOffset(hBand : GDALRasterBandH, dfNewOffset : c_double) : CPLErr;

extern proc GDALGetRasterScale(arg0 : GDALRasterBandH, ref pbSuccess : c_int) : c_double;

extern proc GDALGetRasterScale(arg0 : GDALRasterBandH, pbSuccess : c_ptr(c_int)) : c_double;

extern proc GDALSetRasterScale(hBand : GDALRasterBandH, dfNewOffset : c_double) : CPLErr;

extern proc GDALComputeRasterMinMax(hBand : GDALRasterBandH, bApproxOK : c_int, adfMinMax : c_ptr(c_double)) : CPLErr;

extern proc GDALFlushRasterCache(hBand : GDALRasterBandH) : CPLErr;

extern proc GDALDropRasterCache(hBand : GDALRasterBandH) : CPLErr;

extern proc GDALGetRasterHistogram(hBand : GDALRasterBandH, dfMin : c_double, dfMax : c_double, nBuckets : c_int, ref panHistogram : c_int, bIncludeOutOfRange : c_int, bApproxOK : c_int, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALGetRasterHistogram(hBand : GDALRasterBandH, dfMin : c_double, dfMax : c_double, nBuckets : c_int, panHistogram : c_ptr(c_int), bIncludeOutOfRange : c_int, bApproxOK : c_int, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALGetRasterHistogramEx(hBand : GDALRasterBandH, dfMin : c_double, dfMax : c_double, nBuckets : c_int, ref panHistogram : GUIntBig, bIncludeOutOfRange : c_int, bApproxOK : c_int, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALGetRasterHistogramEx(hBand : GDALRasterBandH, dfMin : c_double, dfMax : c_double, nBuckets : c_int, panHistogram : c_ptr(GUIntBig), bIncludeOutOfRange : c_int, bApproxOK : c_int, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALGetDefaultHistogram(hBand : GDALRasterBandH, ref pdfMin : c_double, ref pdfMax : c_double, ref pnBuckets : c_int, ref ppanHistogram : c_ptr(c_int), bForce : c_int, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALGetDefaultHistogram(hBand : GDALRasterBandH, pdfMin : c_ptr(c_double), pdfMax : c_ptr(c_double), pnBuckets : c_ptr(c_int), ppanHistogram : c_ptr(c_ptr(c_int)), bForce : c_int, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALGetDefaultHistogramEx(hBand : GDALRasterBandH, ref pdfMin : c_double, ref pdfMax : c_double, ref pnBuckets : c_int, ref ppanHistogram : c_ptr(GUIntBig), bForce : c_int, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALGetDefaultHistogramEx(hBand : GDALRasterBandH, pdfMin : c_ptr(c_double), pdfMax : c_ptr(c_double), pnBuckets : c_ptr(c_int), ppanHistogram : c_ptr(c_ptr(GUIntBig)), bForce : c_int, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALSetDefaultHistogram(hBand : GDALRasterBandH, dfMin : c_double, dfMax : c_double, nBuckets : c_int, ref panHistogram : c_int) : CPLErr;

extern proc GDALSetDefaultHistogram(hBand : GDALRasterBandH, dfMin : c_double, dfMax : c_double, nBuckets : c_int, panHistogram : c_ptr(c_int)) : CPLErr;

extern proc GDALSetDefaultHistogramEx(hBand : GDALRasterBandH, dfMin : c_double, dfMax : c_double, nBuckets : c_int, ref panHistogram : GUIntBig) : CPLErr;

extern proc GDALSetDefaultHistogramEx(hBand : GDALRasterBandH, dfMin : c_double, dfMax : c_double, nBuckets : c_int, panHistogram : c_ptr(GUIntBig)) : CPLErr;

extern proc GDALGetRandomRasterSample(arg0 : GDALRasterBandH, arg1 : c_int, ref arg2 : c_float) : c_int;

extern proc GDALGetRandomRasterSample(arg0 : GDALRasterBandH, arg1 : c_int, arg2 : c_ptr(c_float)) : c_int;

extern proc GDALGetRasterSampleOverview(arg0 : GDALRasterBandH, arg1 : c_int) : GDALRasterBandH;

extern proc GDALGetRasterSampleOverviewEx(arg0 : GDALRasterBandH, arg1 : GUIntBig) : GDALRasterBandH;

extern proc GDALFillRaster(hBand : GDALRasterBandH, dfRealValue : c_double, dfImaginaryValue : c_double) : CPLErr;

extern proc GDALComputeBandStats(hBand : GDALRasterBandH, nSampleStep : c_int, ref pdfMean : c_double, ref pdfStdDev : c_double, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALComputeBandStats(hBand : GDALRasterBandH, nSampleStep : c_int, pdfMean : c_ptr(c_double), pdfStdDev : c_ptr(c_double), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALOverviewMagnitudeCorrection(hBaseBand : GDALRasterBandH, nOverviewCount : c_int, ref pahOverviews : GDALRasterBandH, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALOverviewMagnitudeCorrection(hBaseBand : GDALRasterBandH, nOverviewCount : c_int, pahOverviews : c_ptr(GDALRasterBandH), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALGetDefaultRAT(hBand : GDALRasterBandH) : GDALRasterAttributeTableH;

extern proc GDALSetDefaultRAT(arg0 : GDALRasterBandH, arg1 : GDALRasterAttributeTableH) : CPLErr;

extern proc GDALAddDerivedBandPixelFunc(pszName : c_ptrConst(c_char), pfnPixelFunc : GDALDerivedPixelFunc) : CPLErr;

extern proc GDALAddDerivedBandPixelFuncWithArgs(pszName : c_ptrConst(c_char), pfnPixelFunc : GDALDerivedPixelFuncWithArgs, pszMetadata : c_ptrConst(c_char)) : CPLErr;

extern proc GDALVRTRegisterProcessedDatasetFunc(pszFuncName : c_ptrConst(c_char), pUserData : c_ptr(void), pszXMLMetadata : c_ptrConst(c_char), eRequestedInputDT : GDALDataType, const ref paeSupportedInputDT : GDALDataType, nSupportedInputDTSize : c_size_t, const ref panSupportedInputBandCount : c_int, nSupportedInputBandCountSize : c_size_t, pfnInit : GDALVRTProcessedDatasetFuncInit, pfnFree : GDALVRTProcessedDatasetFuncFree, pfnProcess : GDALVRTProcessedDatasetFuncProcess, papszOptions : CSLConstList) : CPLErr;

extern proc GDALVRTRegisterProcessedDatasetFunc(pszFuncName : c_ptrConst(c_char), pUserData : c_ptr(void), pszXMLMetadata : c_ptrConst(c_char), eRequestedInputDT : GDALDataType, paeSupportedInputDT : c_ptrConst(GDALDataType), nSupportedInputDTSize : c_size_t, panSupportedInputBandCount : c_ptrConst(c_int), nSupportedInputBandCountSize : c_size_t, pfnInit : GDALVRTProcessedDatasetFuncInit, pfnFree : GDALVRTProcessedDatasetFuncFree, pfnProcess : GDALVRTProcessedDatasetFuncProcess, papszOptions : CSLConstList) : CPLErr;

extern proc GDALGetMaskBand(hBand : GDALRasterBandH) : GDALRasterBandH;

extern proc GDALGetMaskFlags(hBand : GDALRasterBandH) : c_int;

extern proc GDALCreateMaskBand(hBand : GDALRasterBandH, nFlags : c_int) : CPLErr;

extern proc GDALIsMaskBand(hBand : GDALRasterBandH) : bool;

extern proc GDALGetDataCoverageStatus(hBand : GDALRasterBandH, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nMaskFlagStop : c_int, ref pdfDataPct : c_double) : c_int;

extern proc GDALGetDataCoverageStatus(hBand : GDALRasterBandH, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nMaskFlagStop : c_int, pdfDataPct : c_ptr(c_double)) : c_int;

extern proc GDALARGetNextUpdatedRegion(hARIO : GDALAsyncReaderH, dfTimeout : c_double, ref pnXBufOff : c_int, ref pnYBufOff : c_int, ref pnXBufSize : c_int, ref pnYBufSize : c_int) : GDALAsyncStatusType;

extern proc GDALARGetNextUpdatedRegion(hARIO : GDALAsyncReaderH, dfTimeout : c_double, pnXBufOff : c_ptr(c_int), pnYBufOff : c_ptr(c_int), pnXBufSize : c_ptr(c_int), pnYBufSize : c_ptr(c_int)) : GDALAsyncStatusType;

extern proc GDALARLockBuffer(hARIO : GDALAsyncReaderH, dfTimeout : c_double) : c_int;

extern proc GDALARUnlockBuffer(hARIO : GDALAsyncReaderH) : void;

extern proc GDALGeneralCmdLineProcessor(nArgc : c_int, ref ppapszArgv : c_ptr(c_ptr(c_char)), nOptions : c_int) : c_int;

extern proc GDALGeneralCmdLineProcessor(nArgc : c_int, ppapszArgv : c_ptr(c_ptr(c_ptr(c_char))), nOptions : c_int) : c_int;

extern proc GDALSwapWords(pData : c_ptr(void), nWordSize : c_int, nWordCount : c_int, nWordSkip : c_int) : void;

extern proc GDALSwapWordsEx(pData : c_ptr(void), nWordSize : c_int, nWordCount : c_size_t, nWordSkip : c_int) : void;

extern proc GDALCopyWords(pSrcData : c_ptrConst(void), eSrcType : GDALDataType, nSrcPixelOffset : c_int, pDstData : c_ptr(void), eDstType : GDALDataType, nDstPixelOffset : c_int, nWordCount : c_int) : void;

extern proc GDALCopyWords64(pSrcData : c_ptrConst(void), eSrcType : GDALDataType, nSrcPixelOffset : c_int, pDstData : c_ptr(void), eDstType : GDALDataType, nDstPixelOffset : c_int, nWordCount : GPtrDiff_t) : void;

extern proc GDALCopyBits(const ref pabySrcData : GByte, nSrcOffset : c_int, nSrcStep : c_int, ref pabyDstData : GByte, nDstOffset : c_int, nDstStep : c_int, nBitCount : c_int, nStepCount : c_int) : void;

extern proc GDALCopyBits(pabySrcData : c_ptrConst(GByte), nSrcOffset : c_int, nSrcStep : c_int, pabyDstData : c_ptr(GByte), nDstOffset : c_int, nDstStep : c_int, nBitCount : c_int, nStepCount : c_int) : void;

extern proc GDALDeinterleave(pSourceBuffer : c_ptrConst(void), eSourceDT : GDALDataType, nComponents : c_int, ref ppDestBuffer : c_ptr(void), eDestDT : GDALDataType, nIters : c_size_t) : void;

extern proc GDALDeinterleave(pSourceBuffer : c_ptrConst(void), eSourceDT : GDALDataType, nComponents : c_int, ppDestBuffer : c_ptr(c_ptr(void)), eDestDT : GDALDataType, nIters : c_size_t) : void;

extern proc GDALGetNoDataReplacementValue(arg0 : GDALDataType, arg1 : c_double) : c_double;

extern proc GDALLoadWorldFile(arg0 : c_ptrConst(c_char), ref arg1 : c_double) : c_int;

extern proc GDALLoadWorldFile(arg0 : c_ptrConst(c_char), arg1 : c_ptr(c_double)) : c_int;

extern proc GDALReadWorldFile(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), ref arg2 : c_double) : c_int;

extern proc GDALReadWorldFile(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), arg2 : c_ptr(c_double)) : c_int;

extern proc GDALWriteWorldFile(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), ref arg2 : c_double) : c_int;

extern proc GDALWriteWorldFile(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), arg2 : c_ptr(c_double)) : c_int;

extern proc GDALLoadTabFile(arg0 : c_ptrConst(c_char), ref arg1 : c_double, ref arg2 : c_ptr(c_char), ref arg3 : c_int, ref arg4 : c_ptr(GDAL_GCP)) : c_int;

extern proc GDALLoadTabFile(arg0 : c_ptrConst(c_char), arg1 : c_ptr(c_double), arg2 : c_ptr(c_ptr(c_char)), arg3 : c_ptr(c_int), arg4 : c_ptr(c_ptr(GDAL_GCP))) : c_int;

extern proc GDALReadTabFile(arg0 : c_ptrConst(c_char), ref arg1 : c_double, ref arg2 : c_ptr(c_char), ref arg3 : c_int, ref arg4 : c_ptr(GDAL_GCP)) : c_int;

extern proc GDALReadTabFile(arg0 : c_ptrConst(c_char), arg1 : c_ptr(c_double), arg2 : c_ptr(c_ptr(c_char)), arg3 : c_ptr(c_int), arg4 : c_ptr(c_ptr(GDAL_GCP))) : c_int;

extern proc GDALLoadOziMapFile(arg0 : c_ptrConst(c_char), ref arg1 : c_double, ref arg2 : c_ptr(c_char), ref arg3 : c_int, ref arg4 : c_ptr(GDAL_GCP)) : c_int;

extern proc GDALLoadOziMapFile(arg0 : c_ptrConst(c_char), arg1 : c_ptr(c_double), arg2 : c_ptr(c_ptr(c_char)), arg3 : c_ptr(c_int), arg4 : c_ptr(c_ptr(GDAL_GCP))) : c_int;

extern proc GDALReadOziMapFile(arg0 : c_ptrConst(c_char), ref arg1 : c_double, ref arg2 : c_ptr(c_char), ref arg3 : c_int, ref arg4 : c_ptr(GDAL_GCP)) : c_int;

extern proc GDALReadOziMapFile(arg0 : c_ptrConst(c_char), arg1 : c_ptr(c_double), arg2 : c_ptr(c_ptr(c_char)), arg3 : c_ptr(c_int), arg4 : c_ptr(c_ptr(GDAL_GCP))) : c_int;

extern proc GDALDecToDMS(arg0 : c_double, arg1 : c_ptrConst(c_char), arg2 : c_int) : c_ptrConst(c_char);

extern proc GDALPackedDMSToDec(arg0 : c_double) : c_double;

extern proc GDALDecToPackedDMS(arg0 : c_double) : c_double;

extern proc GDALExtractRPCInfoV1(arg0 : CSLConstList, ref arg1 : GDALRPCInfoV1) : c_int;

extern proc GDALExtractRPCInfoV1(arg0 : CSLConstList, arg1 : c_ptr(GDALRPCInfoV1)) : c_int;

extern proc GDALExtractRPCInfoV2(arg0 : CSLConstList, ref arg1 : GDALRPCInfoV2) : c_int;

extern proc GDALExtractRPCInfoV2(arg0 : CSLConstList, arg1 : c_ptr(GDALRPCInfoV2)) : c_int;

extern proc GDALCreateColorTable(arg0 : GDALPaletteInterp) : GDALColorTableH;

extern proc GDALDestroyColorTable(arg0 : GDALColorTableH) : void;

extern proc GDALCloneColorTable(arg0 : GDALColorTableH) : GDALColorTableH;

extern proc GDALGetPaletteInterpretation(arg0 : GDALColorTableH) : GDALPaletteInterp;

extern proc GDALGetColorEntryCount(arg0 : GDALColorTableH) : c_int;

extern proc GDALGetColorEntry(arg0 : GDALColorTableH, arg1 : c_int) : c_ptrConst(GDALColorEntry);

extern proc GDALGetColorEntryAsRGB(arg0 : GDALColorTableH, arg1 : c_int, ref arg2 : GDALColorEntry) : c_int;

extern proc GDALGetColorEntryAsRGB(arg0 : GDALColorTableH, arg1 : c_int, arg2 : c_ptr(GDALColorEntry)) : c_int;

extern proc GDALSetColorEntry(arg0 : GDALColorTableH, arg1 : c_int, const ref arg2 : GDALColorEntry) : void;

extern proc GDALSetColorEntry(arg0 : GDALColorTableH, arg1 : c_int, arg2 : c_ptrConst(GDALColorEntry)) : void;

extern proc GDALCreateColorRamp(hTable : GDALColorTableH, nStartIndex : c_int, const ref psStartColor : GDALColorEntry, nEndIndex : c_int, const ref psEndColor : GDALColorEntry) : void;

extern proc GDALCreateColorRamp(hTable : GDALColorTableH, nStartIndex : c_int, psStartColor : c_ptrConst(GDALColorEntry), nEndIndex : c_int, psEndColor : c_ptrConst(GDALColorEntry)) : void;

extern proc GDALCreateRasterAttributeTable() : GDALRasterAttributeTableH;

extern proc GDALDestroyRasterAttributeTable(arg0 : GDALRasterAttributeTableH) : void;

extern proc GDALRATGetColumnCount(arg0 : GDALRasterAttributeTableH) : c_int;

extern proc GDALRATGetNameOfCol(arg0 : GDALRasterAttributeTableH, arg1 : c_int) : c_ptrConst(c_char);

extern proc GDALRATGetUsageOfCol(arg0 : GDALRasterAttributeTableH, arg1 : c_int) : GDALRATFieldUsage;

extern proc GDALRATGetTypeOfCol(arg0 : GDALRasterAttributeTableH, arg1 : c_int) : GDALRATFieldType;

extern proc GDALRATGetColOfUsage(arg0 : GDALRasterAttributeTableH, arg1 : GDALRATFieldUsage) : c_int;

extern proc GDALRATGetRowCount(arg0 : GDALRasterAttributeTableH) : c_int;

extern proc GDALRATGetValueAsString(arg0 : GDALRasterAttributeTableH, arg1 : c_int, arg2 : c_int) : c_ptrConst(c_char);

extern proc GDALRATGetValueAsInt(arg0 : GDALRasterAttributeTableH, arg1 : c_int, arg2 : c_int) : c_int;

extern proc GDALRATGetValueAsDouble(arg0 : GDALRasterAttributeTableH, arg1 : c_int, arg2 : c_int) : c_double;

extern proc GDALRATSetValueAsString(arg0 : GDALRasterAttributeTableH, arg1 : c_int, arg2 : c_int, arg3 : c_ptrConst(c_char)) : void;

extern proc GDALRATSetValueAsInt(arg0 : GDALRasterAttributeTableH, arg1 : c_int, arg2 : c_int, arg3 : c_int) : void;

extern proc GDALRATSetValueAsDouble(arg0 : GDALRasterAttributeTableH, arg1 : c_int, arg2 : c_int, arg3 : c_double) : void;

extern proc GDALRATChangesAreWrittenToFile(hRAT : GDALRasterAttributeTableH) : c_int;

extern proc GDALRATValuesIOAsDouble(hRAT : GDALRasterAttributeTableH, eRWFlag : GDALRWFlag, iField : c_int, iStartRow : c_int, iLength : c_int, ref pdfData : c_double) : CPLErr;

extern proc GDALRATValuesIOAsDouble(hRAT : GDALRasterAttributeTableH, eRWFlag : GDALRWFlag, iField : c_int, iStartRow : c_int, iLength : c_int, pdfData : c_ptr(c_double)) : CPLErr;

extern proc GDALRATValuesIOAsInteger(hRAT : GDALRasterAttributeTableH, eRWFlag : GDALRWFlag, iField : c_int, iStartRow : c_int, iLength : c_int, ref pnData : c_int) : CPLErr;

extern proc GDALRATValuesIOAsInteger(hRAT : GDALRasterAttributeTableH, eRWFlag : GDALRWFlag, iField : c_int, iStartRow : c_int, iLength : c_int, pnData : c_ptr(c_int)) : CPLErr;

extern proc GDALRATValuesIOAsString(hRAT : GDALRasterAttributeTableH, eRWFlag : GDALRWFlag, iField : c_int, iStartRow : c_int, iLength : c_int, ref papszStrList : c_ptr(c_char)) : CPLErr;

extern proc GDALRATValuesIOAsString(hRAT : GDALRasterAttributeTableH, eRWFlag : GDALRWFlag, iField : c_int, iStartRow : c_int, iLength : c_int, papszStrList : c_ptr(c_ptr(c_char))) : CPLErr;

extern proc GDALRATSetRowCount(arg0 : GDALRasterAttributeTableH, arg1 : c_int) : void;

extern proc GDALRATCreateColumn(arg0 : GDALRasterAttributeTableH, arg1 : c_ptrConst(c_char), arg2 : GDALRATFieldType, arg3 : GDALRATFieldUsage) : CPLErr;

extern proc GDALRATSetLinearBinning(arg0 : GDALRasterAttributeTableH, arg1 : c_double, arg2 : c_double) : CPLErr;

extern proc GDALRATGetLinearBinning(arg0 : GDALRasterAttributeTableH, ref arg1 : c_double, ref arg2 : c_double) : c_int;

extern proc GDALRATGetLinearBinning(arg0 : GDALRasterAttributeTableH, arg1 : c_ptr(c_double), arg2 : c_ptr(c_double)) : c_int;

extern proc GDALRATSetTableType(hRAT : GDALRasterAttributeTableH, eInTableType : GDALRATTableType) : CPLErr;

extern proc GDALRATGetTableType(hRAT : GDALRasterAttributeTableH) : GDALRATTableType;

extern proc GDALRATInitializeFromColorTable(arg0 : GDALRasterAttributeTableH, arg1 : GDALColorTableH) : CPLErr;

extern proc GDALRATTranslateToColorTable(arg0 : GDALRasterAttributeTableH, nEntryCount : c_int) : GDALColorTableH;

extern proc GDALRATDumpReadable(arg0 : GDALRasterAttributeTableH, ref arg1 : c_FILE) : void;

extern proc GDALRATDumpReadable(arg0 : GDALRasterAttributeTableH, arg1 : c_ptr(c_FILE)) : void;

extern proc GDALRATClone(arg0 : GDALRasterAttributeTableH) : GDALRasterAttributeTableH;

extern proc GDALRATSerializeJSON(arg0 : GDALRasterAttributeTableH) : c_ptr(void);

extern proc GDALRATGetRowOfValue(arg0 : GDALRasterAttributeTableH, arg1 : c_double) : c_int;

extern proc GDALRATRemoveStatistics(arg0 : GDALRasterAttributeTableH) : void;

extern proc GDALRelationshipCreate(arg0 : c_ptrConst(c_char), arg1 : c_ptrConst(c_char), arg2 : c_ptrConst(c_char), arg3 : GDALRelationshipCardinality) : GDALRelationshipH;

extern proc GDALDestroyRelationship(arg0 : GDALRelationshipH) : void;

extern proc GDALRelationshipGetName(arg0 : GDALRelationshipH) : c_ptrConst(c_char);

extern proc GDALRelationshipGetCardinality(arg0 : GDALRelationshipH) : GDALRelationshipCardinality;

extern proc GDALRelationshipGetLeftTableName(arg0 : GDALRelationshipH) : c_ptrConst(c_char);

extern proc GDALRelationshipGetRightTableName(arg0 : GDALRelationshipH) : c_ptrConst(c_char);

extern proc GDALRelationshipGetMappingTableName(arg0 : GDALRelationshipH) : c_ptrConst(c_char);

extern proc GDALRelationshipSetMappingTableName(arg0 : GDALRelationshipH, arg1 : c_ptrConst(c_char)) : void;

extern proc GDALRelationshipGetLeftTableFields(arg0 : GDALRelationshipH) : c_ptr(c_ptr(c_char));

extern proc GDALRelationshipGetRightTableFields(arg0 : GDALRelationshipH) : c_ptr(c_ptr(c_char));

extern proc GDALRelationshipSetLeftTableFields(arg0 : GDALRelationshipH, arg1 : CSLConstList) : void;

extern proc GDALRelationshipSetRightTableFields(arg0 : GDALRelationshipH, arg1 : CSLConstList) : void;

extern proc GDALRelationshipGetLeftMappingTableFields(arg0 : GDALRelationshipH) : c_ptr(c_ptr(c_char));

extern proc GDALRelationshipGetRightMappingTableFields(arg0 : GDALRelationshipH) : c_ptr(c_ptr(c_char));

extern proc GDALRelationshipSetLeftMappingTableFields(arg0 : GDALRelationshipH, arg1 : CSLConstList) : void;

extern proc GDALRelationshipSetRightMappingTableFields(arg0 : GDALRelationshipH, arg1 : CSLConstList) : void;

extern proc GDALRelationshipGetType(arg0 : GDALRelationshipH) : GDALRelationshipType;

extern proc GDALRelationshipSetType(arg0 : GDALRelationshipH, arg1 : GDALRelationshipType) : void;

extern proc GDALRelationshipGetForwardPathLabel(arg0 : GDALRelationshipH) : c_ptrConst(c_char);

extern proc GDALRelationshipSetForwardPathLabel(arg0 : GDALRelationshipH, arg1 : c_ptrConst(c_char)) : void;

extern proc GDALRelationshipGetBackwardPathLabel(arg0 : GDALRelationshipH) : c_ptrConst(c_char);

extern proc GDALRelationshipSetBackwardPathLabel(arg0 : GDALRelationshipH, arg1 : c_ptrConst(c_char)) : void;

extern proc GDALRelationshipGetRelatedTableType(arg0 : GDALRelationshipH) : c_ptrConst(c_char);

extern proc GDALRelationshipSetRelatedTableType(arg0 : GDALRelationshipH, arg1 : c_ptrConst(c_char)) : void;

extern proc GDALSetCacheMax(nBytes : c_int) : void;

extern proc GDALGetCacheMax() : c_int;

extern proc GDALGetCacheUsed() : c_int;

extern proc GDALSetCacheMax64(nBytes : GIntBig) : void;

extern proc GDALGetCacheMax64() : GIntBig;

extern proc GDALGetCacheUsed64() : GIntBig;

extern proc GDALFlushCacheBlock() : c_int;

extern proc GDALDatasetGetVirtualMem(hDS : GDALDatasetH, eRWFlag : GDALRWFlag, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nBufXSize : c_int, nBufYSize : c_int, eBufType : GDALDataType, nBandCount : c_int, ref panBandMap : c_int, nPixelSpace : c_int, nLineSpace : GIntBig, nBandSpace : GIntBig, nCacheSize : c_size_t, nPageSizeHint : c_size_t, bSingleThreadUsage : c_int, papszOptions : CSLConstList) : c_ptr(CPLVirtualMem);

extern proc GDALDatasetGetVirtualMem(hDS : GDALDatasetH, eRWFlag : GDALRWFlag, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nBufXSize : c_int, nBufYSize : c_int, eBufType : GDALDataType, nBandCount : c_int, panBandMap : c_ptr(c_int), nPixelSpace : c_int, nLineSpace : GIntBig, nBandSpace : GIntBig, nCacheSize : c_size_t, nPageSizeHint : c_size_t, bSingleThreadUsage : c_int, papszOptions : CSLConstList) : c_ptr(CPLVirtualMem);

extern proc GDALRasterBandGetVirtualMem(hBand : GDALRasterBandH, eRWFlag : GDALRWFlag, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nBufXSize : c_int, nBufYSize : c_int, eBufType : GDALDataType, nPixelSpace : c_int, nLineSpace : GIntBig, nCacheSize : c_size_t, nPageSizeHint : c_size_t, bSingleThreadUsage : c_int, papszOptions : CSLConstList) : c_ptr(CPLVirtualMem);

extern proc GDALGetVirtualMemAuto(hBand : GDALRasterBandH, eRWFlag : GDALRWFlag, ref pnPixelSpace : c_int, ref pnLineSpace : GIntBig, papszOptions : CSLConstList) : c_ptr(CPLVirtualMem);

extern proc GDALGetVirtualMemAuto(hBand : GDALRasterBandH, eRWFlag : GDALRWFlag, pnPixelSpace : c_ptr(c_int), pnLineSpace : c_ptr(GIntBig), papszOptions : CSLConstList) : c_ptr(CPLVirtualMem);

extern proc GDALDatasetGetTiledVirtualMem(hDS : GDALDatasetH, eRWFlag : GDALRWFlag, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nTileXSize : c_int, nTileYSize : c_int, eBufType : GDALDataType, nBandCount : c_int, ref panBandMap : c_int, eTileOrganization : GDALTileOrganization, nCacheSize : c_size_t, bSingleThreadUsage : c_int, papszOptions : CSLConstList) : c_ptr(CPLVirtualMem);

extern proc GDALDatasetGetTiledVirtualMem(hDS : GDALDatasetH, eRWFlag : GDALRWFlag, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nTileXSize : c_int, nTileYSize : c_int, eBufType : GDALDataType, nBandCount : c_int, panBandMap : c_ptr(c_int), eTileOrganization : GDALTileOrganization, nCacheSize : c_size_t, bSingleThreadUsage : c_int, papszOptions : CSLConstList) : c_ptr(CPLVirtualMem);

extern proc GDALRasterBandGetTiledVirtualMem(hBand : GDALRasterBandH, eRWFlag : GDALRWFlag, nXOff : c_int, nYOff : c_int, nXSize : c_int, nYSize : c_int, nTileXSize : c_int, nTileYSize : c_int, eBufType : GDALDataType, nCacheSize : c_size_t, bSingleThreadUsage : c_int, papszOptions : CSLConstList) : c_ptr(CPLVirtualMem);

extern proc GDALCreatePansharpenedVRT(pszXML : c_ptrConst(c_char), hPanchroBand : GDALRasterBandH, nInputSpectralBands : c_int, ref pahInputSpectralBands : GDALRasterBandH) : GDALDatasetH;

extern proc GDALCreatePansharpenedVRT(pszXML : c_ptrConst(c_char), hPanchroBand : GDALRasterBandH, nInputSpectralBands : c_int, pahInputSpectralBands : c_ptr(GDALRasterBandH)) : GDALDatasetH;

extern proc GDALGetJPEG2000Structure(pszFilename : c_ptrConst(c_char), papszOptions : CSLConstList) : c_ptr(CPLXMLNode);

extern proc GDALCreateMultiDimensional(hDriver : GDALDriverH, pszName : c_ptrConst(c_char), papszRootGroupOptions : CSLConstList, papszOptions : CSLConstList) : GDALDatasetH;

extern proc GDALExtendedDataTypeCreate(eType : GDALDataType) : GDALExtendedDataTypeH;

extern proc GDALExtendedDataTypeCreateString(nMaxStringLength : c_size_t) : GDALExtendedDataTypeH;

extern proc GDALExtendedDataTypeCreateStringEx(nMaxStringLength : c_size_t, eSubType : GDALExtendedDataTypeSubType) : GDALExtendedDataTypeH;

extern proc GDALExtendedDataTypeCreateCompound(pszName : c_ptrConst(c_char), nTotalSize : c_size_t, nComponents : c_size_t, const ref comps : GDALEDTComponentH) : GDALExtendedDataTypeH;

extern proc GDALExtendedDataTypeCreateCompound(pszName : c_ptrConst(c_char), nTotalSize : c_size_t, nComponents : c_size_t, comps : c_ptrConst(GDALEDTComponentH)) : GDALExtendedDataTypeH;

extern proc GDALExtendedDataTypeRelease(hEDT : GDALExtendedDataTypeH) : void;

extern proc GDALExtendedDataTypeGetName(hEDT : GDALExtendedDataTypeH) : c_ptrConst(c_char);

extern proc GDALExtendedDataTypeGetClass(hEDT : GDALExtendedDataTypeH) : GDALExtendedDataTypeClass;

extern proc GDALExtendedDataTypeGetNumericDataType(hEDT : GDALExtendedDataTypeH) : GDALDataType;

extern proc GDALExtendedDataTypeGetSize(hEDT : GDALExtendedDataTypeH) : c_size_t;

extern proc GDALExtendedDataTypeGetMaxStringLength(hEDT : GDALExtendedDataTypeH) : c_size_t;

extern proc GDALExtendedDataTypeGetComponents(hEDT : GDALExtendedDataTypeH, ref pnCount : c_size_t) : c_ptr(GDALEDTComponentH);

extern proc GDALExtendedDataTypeGetComponents(hEDT : GDALExtendedDataTypeH, pnCount : c_ptr(c_size_t)) : c_ptr(GDALEDTComponentH);

extern proc GDALExtendedDataTypeFreeComponents(ref components : GDALEDTComponentH, nCount : c_size_t) : void;

extern proc GDALExtendedDataTypeFreeComponents(components : c_ptr(GDALEDTComponentH), nCount : c_size_t) : void;

extern proc GDALExtendedDataTypeCanConvertTo(hSourceEDT : GDALExtendedDataTypeH, hTargetEDT : GDALExtendedDataTypeH) : c_int;

extern proc GDALExtendedDataTypeEquals(hFirstEDT : GDALExtendedDataTypeH, hSecondEDT : GDALExtendedDataTypeH) : c_int;

extern proc GDALExtendedDataTypeGetSubType(hEDT : GDALExtendedDataTypeH) : GDALExtendedDataTypeSubType;

extern proc GDALEDTComponentCreate(pszName : c_ptrConst(c_char), nOffset : c_size_t, hType : GDALExtendedDataTypeH) : GDALEDTComponentH;

extern proc GDALEDTComponentRelease(hComp : GDALEDTComponentH) : void;

extern proc GDALEDTComponentGetName(hComp : GDALEDTComponentH) : c_ptrConst(c_char);

extern proc GDALEDTComponentGetOffset(hComp : GDALEDTComponentH) : c_size_t;

extern proc GDALEDTComponentGetType(hComp : GDALEDTComponentH) : GDALExtendedDataTypeH;

extern proc GDALDatasetGetRootGroup(hDS : GDALDatasetH) : GDALGroupH;

extern proc GDALGroupRelease(hGroup : GDALGroupH) : void;

extern proc GDALGroupGetName(hGroup : GDALGroupH) : c_ptrConst(c_char);

extern proc GDALGroupGetFullName(hGroup : GDALGroupH) : c_ptrConst(c_char);

extern proc GDALGroupGetMDArrayNames(hGroup : GDALGroupH, papszOptions : CSLConstList) : c_ptr(c_ptr(c_char));

extern proc GDALGroupOpenMDArray(hGroup : GDALGroupH, pszMDArrayName : c_ptrConst(c_char), papszOptions : CSLConstList) : GDALMDArrayH;

extern proc GDALGroupOpenMDArrayFromFullname(hGroup : GDALGroupH, pszMDArrayName : c_ptrConst(c_char), papszOptions : CSLConstList) : GDALMDArrayH;

extern proc GDALGroupResolveMDArray(hGroup : GDALGroupH, pszName : c_ptrConst(c_char), pszStartingPoint : c_ptrConst(c_char), papszOptions : CSLConstList) : GDALMDArrayH;

extern proc GDALGroupGetGroupNames(hGroup : GDALGroupH, papszOptions : CSLConstList) : c_ptr(c_ptr(c_char));

extern proc GDALGroupOpenGroup(hGroup : GDALGroupH, pszSubGroupName : c_ptrConst(c_char), papszOptions : CSLConstList) : GDALGroupH;

extern proc GDALGroupOpenGroupFromFullname(hGroup : GDALGroupH, pszMDArrayName : c_ptrConst(c_char), papszOptions : CSLConstList) : GDALGroupH;

extern proc GDALGroupGetVectorLayerNames(hGroup : GDALGroupH, papszOptions : CSLConstList) : c_ptr(c_ptr(c_char));

extern proc GDALGroupOpenVectorLayer(hGroup : GDALGroupH, pszVectorLayerName : c_ptrConst(c_char), papszOptions : CSLConstList) : OGRLayerH;

extern proc GDALGroupGetDimensions(hGroup : GDALGroupH, ref pnCount : c_size_t, papszOptions : CSLConstList) : c_ptr(GDALDimensionH);

extern proc GDALGroupGetDimensions(hGroup : GDALGroupH, pnCount : c_ptr(c_size_t), papszOptions : CSLConstList) : c_ptr(GDALDimensionH);

extern proc GDALGroupGetAttribute(hGroup : GDALGroupH, pszName : c_ptrConst(c_char)) : GDALAttributeH;

extern proc GDALGroupGetAttributes(hGroup : GDALGroupH, ref pnCount : c_size_t, papszOptions : CSLConstList) : c_ptr(GDALAttributeH);

extern proc GDALGroupGetAttributes(hGroup : GDALGroupH, pnCount : c_ptr(c_size_t), papszOptions : CSLConstList) : c_ptr(GDALAttributeH);

extern proc GDALGroupGetStructuralInfo(hGroup : GDALGroupH) : CSLConstList;

extern proc GDALGroupCreateGroup(hGroup : GDALGroupH, pszSubGroupName : c_ptrConst(c_char), papszOptions : CSLConstList) : GDALGroupH;

extern proc GDALGroupDeleteGroup(hGroup : GDALGroupH, pszName : c_ptrConst(c_char), papszOptions : CSLConstList) : bool;

extern proc GDALGroupCreateDimension(hGroup : GDALGroupH, pszName : c_ptrConst(c_char), pszType : c_ptrConst(c_char), pszDirection : c_ptrConst(c_char), nSize : GUInt64, papszOptions : CSLConstList) : GDALDimensionH;

extern proc GDALGroupCreateMDArray(hGroup : GDALGroupH, pszName : c_ptrConst(c_char), nDimensions : c_size_t, ref pahDimensions : GDALDimensionH, hEDT : GDALExtendedDataTypeH, papszOptions : CSLConstList) : GDALMDArrayH;

extern proc GDALGroupCreateMDArray(hGroup : GDALGroupH, pszName : c_ptrConst(c_char), nDimensions : c_size_t, pahDimensions : c_ptr(GDALDimensionH), hEDT : GDALExtendedDataTypeH, papszOptions : CSLConstList) : GDALMDArrayH;

extern proc GDALGroupDeleteMDArray(hGroup : GDALGroupH, pszName : c_ptrConst(c_char), papszOptions : CSLConstList) : bool;

extern proc GDALGroupCreateAttribute(hGroup : GDALGroupH, pszName : c_ptrConst(c_char), nDimensions : c_size_t, const ref panDimensions : GUInt64, hEDT : GDALExtendedDataTypeH, papszOptions : CSLConstList) : GDALAttributeH;

extern proc GDALGroupCreateAttribute(hGroup : GDALGroupH, pszName : c_ptrConst(c_char), nDimensions : c_size_t, panDimensions : c_ptrConst(GUInt64), hEDT : GDALExtendedDataTypeH, papszOptions : CSLConstList) : GDALAttributeH;

extern proc GDALGroupDeleteAttribute(hGroup : GDALGroupH, pszName : c_ptrConst(c_char), papszOptions : CSLConstList) : bool;

extern proc GDALGroupRename(hGroup : GDALGroupH, pszNewName : c_ptrConst(c_char)) : bool;

extern proc GDALGroupSubsetDimensionFromSelection(hGroup : GDALGroupH, pszSelection : c_ptrConst(c_char), papszOptions : CSLConstList) : GDALGroupH;

extern proc GDALMDArrayRelease(hMDArray : GDALMDArrayH) : void;

extern proc GDALMDArrayGetName(hArray : GDALMDArrayH) : c_ptrConst(c_char);

extern proc GDALMDArrayGetFullName(hArray : GDALMDArrayH) : c_ptrConst(c_char);

extern proc GDALMDArrayGetTotalElementsCount(hArray : GDALMDArrayH) : GUInt64;

extern proc GDALMDArrayGetDimensionCount(hArray : GDALMDArrayH) : c_size_t;

extern proc GDALMDArrayGetDimensions(hArray : GDALMDArrayH, ref pnCount : c_size_t) : c_ptr(GDALDimensionH);

extern proc GDALMDArrayGetDimensions(hArray : GDALMDArrayH, pnCount : c_ptr(c_size_t)) : c_ptr(GDALDimensionH);

extern proc GDALMDArrayGetDataType(hArray : GDALMDArrayH) : GDALExtendedDataTypeH;

extern proc GDALMDArrayRead(hArray : GDALMDArrayH, const ref arrayStartIdx : GUInt64, const ref count : c_size_t, const ref arrayStep : GInt64, const ref bufferStride : GPtrDiff_t, bufferDatatype : GDALExtendedDataTypeH, pDstBuffer : c_ptr(void), pDstBufferAllocStart : c_ptrConst(void), nDstBufferllocSize : c_size_t) : c_int;

extern proc GDALMDArrayRead(hArray : GDALMDArrayH, arrayStartIdx : c_ptrConst(GUInt64), count : c_ptrConst(c_size_t), arrayStep : c_ptrConst(GInt64), bufferStride : c_ptrConst(GPtrDiff_t), bufferDatatype : GDALExtendedDataTypeH, pDstBuffer : c_ptr(void), pDstBufferAllocStart : c_ptrConst(void), nDstBufferllocSize : c_size_t) : c_int;

extern proc GDALMDArrayWrite(hArray : GDALMDArrayH, const ref arrayStartIdx : GUInt64, const ref count : c_size_t, const ref arrayStep : GInt64, const ref bufferStride : GPtrDiff_t, bufferDatatype : GDALExtendedDataTypeH, pSrcBuffer : c_ptrConst(void), psrcBufferAllocStart : c_ptrConst(void), nSrcBufferllocSize : c_size_t) : c_int;

extern proc GDALMDArrayWrite(hArray : GDALMDArrayH, arrayStartIdx : c_ptrConst(GUInt64), count : c_ptrConst(c_size_t), arrayStep : c_ptrConst(GInt64), bufferStride : c_ptrConst(GPtrDiff_t), bufferDatatype : GDALExtendedDataTypeH, pSrcBuffer : c_ptrConst(void), psrcBufferAllocStart : c_ptrConst(void), nSrcBufferllocSize : c_size_t) : c_int;

extern proc GDALMDArrayAdviseRead(hArray : GDALMDArrayH, const ref arrayStartIdx : GUInt64, const ref count : c_size_t) : c_int;

extern proc GDALMDArrayAdviseRead(hArray : GDALMDArrayH, arrayStartIdx : c_ptrConst(GUInt64), count : c_ptrConst(c_size_t)) : c_int;

extern proc GDALMDArrayAdviseReadEx(hArray : GDALMDArrayH, const ref arrayStartIdx : GUInt64, const ref count : c_size_t, papszOptions : CSLConstList) : c_int;

extern proc GDALMDArrayAdviseReadEx(hArray : GDALMDArrayH, arrayStartIdx : c_ptrConst(GUInt64), count : c_ptrConst(c_size_t), papszOptions : CSLConstList) : c_int;

extern proc GDALMDArrayGetAttribute(hArray : GDALMDArrayH, pszName : c_ptrConst(c_char)) : GDALAttributeH;

extern proc GDALMDArrayGetAttributes(hArray : GDALMDArrayH, ref pnCount : c_size_t, papszOptions : CSLConstList) : c_ptr(GDALAttributeH);

extern proc GDALMDArrayGetAttributes(hArray : GDALMDArrayH, pnCount : c_ptr(c_size_t), papszOptions : CSLConstList) : c_ptr(GDALAttributeH);

extern proc GDALMDArrayCreateAttribute(hArray : GDALMDArrayH, pszName : c_ptrConst(c_char), nDimensions : c_size_t, const ref panDimensions : GUInt64, hEDT : GDALExtendedDataTypeH, papszOptions : CSLConstList) : GDALAttributeH;

extern proc GDALMDArrayCreateAttribute(hArray : GDALMDArrayH, pszName : c_ptrConst(c_char), nDimensions : c_size_t, panDimensions : c_ptrConst(GUInt64), hEDT : GDALExtendedDataTypeH, papszOptions : CSLConstList) : GDALAttributeH;

extern proc GDALMDArrayDeleteAttribute(hArray : GDALMDArrayH, pszName : c_ptrConst(c_char), papszOptions : CSLConstList) : bool;

extern proc GDALMDArrayResize(hArray : GDALMDArrayH, const ref panNewDimSizes : GUInt64, papszOptions : CSLConstList) : bool;

extern proc GDALMDArrayResize(hArray : GDALMDArrayH, panNewDimSizes : c_ptrConst(GUInt64), papszOptions : CSLConstList) : bool;

extern proc GDALMDArrayGetRawNoDataValue(hArray : GDALMDArrayH) : c_ptrConst(void);

extern proc GDALMDArrayGetNoDataValueAsDouble(hArray : GDALMDArrayH, ref pbHasNoDataValue : c_int) : c_double;

extern proc GDALMDArrayGetNoDataValueAsDouble(hArray : GDALMDArrayH, pbHasNoDataValue : c_ptr(c_int)) : c_double;

extern proc GDALMDArrayGetNoDataValueAsInt64(hArray : GDALMDArrayH, ref pbHasNoDataValue : c_int) : int(64);

extern proc GDALMDArrayGetNoDataValueAsInt64(hArray : GDALMDArrayH, pbHasNoDataValue : c_ptr(c_int)) : int(64);

extern proc GDALMDArrayGetNoDataValueAsUInt64(hArray : GDALMDArrayH, ref pbHasNoDataValue : c_int) : uint(64);

extern proc GDALMDArrayGetNoDataValueAsUInt64(hArray : GDALMDArrayH, pbHasNoDataValue : c_ptr(c_int)) : uint(64);

extern proc GDALMDArraySetRawNoDataValue(hArray : GDALMDArrayH, arg1 : c_ptrConst(void)) : c_int;

extern proc GDALMDArraySetNoDataValueAsDouble(hArray : GDALMDArrayH, dfNoDataValue : c_double) : c_int;

extern proc GDALMDArraySetNoDataValueAsInt64(hArray : GDALMDArrayH, nNoDataValue : int(64)) : c_int;

extern proc GDALMDArraySetNoDataValueAsUInt64(hArray : GDALMDArrayH, nNoDataValue : uint(64)) : c_int;

extern proc GDALMDArraySetScale(hArray : GDALMDArrayH, dfScale : c_double) : c_int;

extern proc GDALMDArraySetScaleEx(hArray : GDALMDArrayH, dfScale : c_double, eStorageType : GDALDataType) : c_int;

extern proc GDALMDArrayGetScale(hArray : GDALMDArrayH, ref pbHasValue : c_int) : c_double;

extern proc GDALMDArrayGetScale(hArray : GDALMDArrayH, pbHasValue : c_ptr(c_int)) : c_double;

extern proc GDALMDArrayGetScaleEx(hArray : GDALMDArrayH, ref pbHasValue : c_int, ref peStorageType : GDALDataType) : c_double;

extern proc GDALMDArrayGetScaleEx(hArray : GDALMDArrayH, pbHasValue : c_ptr(c_int), peStorageType : c_ptr(GDALDataType)) : c_double;

extern proc GDALMDArraySetOffset(hArray : GDALMDArrayH, dfOffset : c_double) : c_int;

extern proc GDALMDArraySetOffsetEx(hArray : GDALMDArrayH, dfOffset : c_double, eStorageType : GDALDataType) : c_int;

extern proc GDALMDArrayGetOffset(hArray : GDALMDArrayH, ref pbHasValue : c_int) : c_double;

extern proc GDALMDArrayGetOffset(hArray : GDALMDArrayH, pbHasValue : c_ptr(c_int)) : c_double;

extern proc GDALMDArrayGetOffsetEx(hArray : GDALMDArrayH, ref pbHasValue : c_int, ref peStorageType : GDALDataType) : c_double;

extern proc GDALMDArrayGetOffsetEx(hArray : GDALMDArrayH, pbHasValue : c_ptr(c_int), peStorageType : c_ptr(GDALDataType)) : c_double;

extern proc GDALMDArrayGetBlockSize(hArray : GDALMDArrayH, ref pnCount : c_size_t) : c_ptr(GUInt64);

extern proc GDALMDArrayGetBlockSize(hArray : GDALMDArrayH, pnCount : c_ptr(c_size_t)) : c_ptr(GUInt64);

extern proc GDALMDArraySetUnit(hArray : GDALMDArrayH, arg1 : c_ptrConst(c_char)) : c_int;

extern proc GDALMDArrayGetUnit(hArray : GDALMDArrayH) : c_ptrConst(c_char);

extern proc GDALMDArraySetSpatialRef(arg0 : GDALMDArrayH, arg1 : OGRSpatialReferenceH) : c_int;

extern proc GDALMDArrayGetSpatialRef(hArray : GDALMDArrayH) : OGRSpatialReferenceH;

extern proc GDALMDArrayGetProcessingChunkSize(hArray : GDALMDArrayH, ref pnCount : c_size_t, nMaxChunkMemory : c_size_t) : c_ptr(c_size_t);

extern proc GDALMDArrayGetProcessingChunkSize(hArray : GDALMDArrayH, pnCount : c_ptr(c_size_t), nMaxChunkMemory : c_size_t) : c_ptr(c_size_t);

extern proc GDALMDArrayGetStructuralInfo(hArray : GDALMDArrayH) : CSLConstList;

extern proc GDALMDArrayGetView(hArray : GDALMDArrayH, pszViewExpr : c_ptrConst(c_char)) : GDALMDArrayH;

extern proc GDALMDArrayTranspose(hArray : GDALMDArrayH, nNewAxisCount : c_size_t, const ref panMapNewAxisToOldAxis : c_int) : GDALMDArrayH;

extern proc GDALMDArrayTranspose(hArray : GDALMDArrayH, nNewAxisCount : c_size_t, panMapNewAxisToOldAxis : c_ptrConst(c_int)) : GDALMDArrayH;

extern proc GDALMDArrayGetUnscaled(hArray : GDALMDArrayH) : GDALMDArrayH;

extern proc GDALMDArrayGetMask(hArray : GDALMDArrayH, papszOptions : CSLConstList) : GDALMDArrayH;

extern proc GDALMDArrayAsClassicDataset(hArray : GDALMDArrayH, iXDim : c_size_t, iYDim : c_size_t) : GDALDatasetH;

extern proc GDALMDArrayAsClassicDatasetEx(hArray : GDALMDArrayH, iXDim : c_size_t, iYDim : c_size_t, hRootGroup : GDALGroupH, papszOptions : CSLConstList) : GDALDatasetH;

extern proc GDALMDArrayGetStatistics(hArray : GDALMDArrayH, arg1 : GDALDatasetH, bApproxOK : c_int, bForce : c_int, ref pdfMin : c_double, ref pdfMax : c_double, ref pdfMean : c_double, ref pdfStdDev : c_double, ref pnValidCount : GUInt64, pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALMDArrayGetStatistics(hArray : GDALMDArrayH, arg1 : GDALDatasetH, bApproxOK : c_int, bForce : c_int, pdfMin : c_ptr(c_double), pdfMax : c_ptr(c_double), pdfMean : c_ptr(c_double), pdfStdDev : c_ptr(c_double), pnValidCount : c_ptr(GUInt64), pfnProgress : GDALProgressFunc, pProgressData : c_ptr(void)) : CPLErr;

extern proc GDALMDArrayComputeStatistics(hArray : GDALMDArrayH, arg1 : GDALDatasetH, bApproxOK : c_int, ref pdfMin : c_double, ref pdfMax : c_double, ref pdfMean : c_double, ref pdfStdDev : c_double, ref pnValidCount : GUInt64, arg8 : GDALProgressFunc, pProgressData : c_ptr(void)) : c_int;

extern proc GDALMDArrayComputeStatistics(hArray : GDALMDArrayH, arg1 : GDALDatasetH, bApproxOK : c_int, pdfMin : c_ptr(c_double), pdfMax : c_ptr(c_double), pdfMean : c_ptr(c_double), pdfStdDev : c_ptr(c_double), pnValidCount : c_ptr(GUInt64), arg8 : GDALProgressFunc, pProgressData : c_ptr(void)) : c_int;

extern proc GDALMDArrayComputeStatisticsEx(hArray : GDALMDArrayH, arg1 : GDALDatasetH, bApproxOK : c_int, ref pdfMin : c_double, ref pdfMax : c_double, ref pdfMean : c_double, ref pdfStdDev : c_double, ref pnValidCount : GUInt64, arg8 : GDALProgressFunc, pProgressData : c_ptr(void), papszOptions : CSLConstList) : c_int;

extern proc GDALMDArrayComputeStatisticsEx(hArray : GDALMDArrayH, arg1 : GDALDatasetH, bApproxOK : c_int, pdfMin : c_ptr(c_double), pdfMax : c_ptr(c_double), pdfMean : c_ptr(c_double), pdfStdDev : c_ptr(c_double), pnValidCount : c_ptr(GUInt64), arg8 : GDALProgressFunc, pProgressData : c_ptr(void), papszOptions : CSLConstList) : c_int;

extern proc GDALMDArrayGetResampled(hArray : GDALMDArrayH, nNewDimCount : c_size_t, const ref pahNewDims : GDALDimensionH, resampleAlg : GDALRIOResampleAlg, hTargetSRS : OGRSpatialReferenceH, papszOptions : CSLConstList) : GDALMDArrayH;

extern proc GDALMDArrayGetResampled(hArray : GDALMDArrayH, nNewDimCount : c_size_t, pahNewDims : c_ptrConst(GDALDimensionH), resampleAlg : GDALRIOResampleAlg, hTargetSRS : OGRSpatialReferenceH, papszOptions : CSLConstList) : GDALMDArrayH;

extern proc GDALMDArrayGetGridded(hArray : GDALMDArrayH, pszGridOptions : c_ptrConst(c_char), hXArray : GDALMDArrayH, hYArray : GDALMDArrayH, papszOptions : CSLConstList) : GDALMDArrayH;

extern proc GDALMDArrayGetCoordinateVariables(hArray : GDALMDArrayH, ref pnCount : c_size_t) : c_ptr(GDALMDArrayH);

extern proc GDALMDArrayGetCoordinateVariables(hArray : GDALMDArrayH, pnCount : c_ptr(c_size_t)) : c_ptr(GDALMDArrayH);

extern proc GDALReleaseArrays(ref arrays : GDALMDArrayH, nCount : c_size_t) : void;

extern proc GDALReleaseArrays(arrays : c_ptr(GDALMDArrayH), nCount : c_size_t) : void;

extern proc GDALMDArrayCache(hArray : GDALMDArrayH, papszOptions : CSLConstList) : c_int;

extern proc GDALMDArrayRename(hArray : GDALMDArrayH, pszNewName : c_ptrConst(c_char)) : bool;

extern proc GDALCreateRasterAttributeTableFromMDArrays(eTableType : GDALRATTableType, nArrays : c_int, const ref ahArrays : GDALMDArrayH, const ref paeUsages : GDALRATFieldUsage) : GDALRasterAttributeTableH;

extern proc GDALCreateRasterAttributeTableFromMDArrays(eTableType : GDALRATTableType, nArrays : c_int, ahArrays : c_ptrConst(GDALMDArrayH), paeUsages : c_ptrConst(GDALRATFieldUsage)) : GDALRasterAttributeTableH;

extern proc GDALAttributeRelease(hAttr : GDALAttributeH) : void;

extern proc GDALReleaseAttributes(ref attributes : GDALAttributeH, nCount : c_size_t) : void;

extern proc GDALReleaseAttributes(attributes : c_ptr(GDALAttributeH), nCount : c_size_t) : void;

extern proc GDALAttributeGetName(hAttr : GDALAttributeH) : c_ptrConst(c_char);

extern proc GDALAttributeGetFullName(hAttr : GDALAttributeH) : c_ptrConst(c_char);

extern proc GDALAttributeGetTotalElementsCount(hAttr : GDALAttributeH) : GUInt64;

extern proc GDALAttributeGetDimensionCount(hAttr : GDALAttributeH) : c_size_t;

extern proc GDALAttributeGetDimensionsSize(hAttr : GDALAttributeH, ref pnCount : c_size_t) : c_ptr(GUInt64);

extern proc GDALAttributeGetDimensionsSize(hAttr : GDALAttributeH, pnCount : c_ptr(c_size_t)) : c_ptr(GUInt64);

extern proc GDALAttributeGetDataType(hAttr : GDALAttributeH) : GDALExtendedDataTypeH;

extern proc GDALAttributeReadAsRaw(hAttr : GDALAttributeH, ref pnSize : c_size_t) : c_ptr(GByte);

extern proc GDALAttributeReadAsRaw(hAttr : GDALAttributeH, pnSize : c_ptr(c_size_t)) : c_ptr(GByte);

extern proc GDALAttributeFreeRawResult(hAttr : GDALAttributeH, ref raw : GByte, nSize : c_size_t) : void;

extern proc GDALAttributeFreeRawResult(hAttr : GDALAttributeH, raw : c_ptr(GByte), nSize : c_size_t) : void;

extern proc GDALAttributeReadAsString(hAttr : GDALAttributeH) : c_ptrConst(c_char);

extern proc GDALAttributeReadAsInt(hAttr : GDALAttributeH) : c_int;

extern proc GDALAttributeReadAsDouble(hAttr : GDALAttributeH) : c_double;

extern proc GDALAttributeReadAsStringArray(hAttr : GDALAttributeH) : c_ptr(c_ptr(c_char));

extern proc GDALAttributeReadAsIntArray(hAttr : GDALAttributeH, ref pnCount : c_size_t) : c_ptr(c_int);

extern proc GDALAttributeReadAsIntArray(hAttr : GDALAttributeH, pnCount : c_ptr(c_size_t)) : c_ptr(c_int);

extern proc GDALAttributeReadAsDoubleArray(hAttr : GDALAttributeH, ref pnCount : c_size_t) : c_ptr(c_double);

extern proc GDALAttributeReadAsDoubleArray(hAttr : GDALAttributeH, pnCount : c_ptr(c_size_t)) : c_ptr(c_double);

extern proc GDALAttributeWriteRaw(hAttr : GDALAttributeH, arg1 : c_ptrConst(void), arg2 : c_size_t) : c_int;

extern proc GDALAttributeWriteString(hAttr : GDALAttributeH, arg1 : c_ptrConst(c_char)) : c_int;

extern proc GDALAttributeWriteStringArray(hAttr : GDALAttributeH, arg1 : CSLConstList) : c_int;

extern proc GDALAttributeWriteInt(hAttr : GDALAttributeH, arg1 : c_int) : c_int;

extern proc GDALAttributeWriteDouble(hAttr : GDALAttributeH, arg1 : c_double) : c_int;

extern proc GDALAttributeWriteDoubleArray(hAttr : GDALAttributeH, const ref arg1 : c_double, arg2 : c_size_t) : c_int;

extern proc GDALAttributeWriteDoubleArray(hAttr : GDALAttributeH, arg1 : c_ptrConst(c_double), arg2 : c_size_t) : c_int;

extern proc GDALAttributeRename(hAttr : GDALAttributeH, pszNewName : c_ptrConst(c_char)) : bool;

extern proc GDALDimensionRelease(hDim : GDALDimensionH) : void;

extern proc GDALReleaseDimensions(ref dims : GDALDimensionH, nCount : c_size_t) : void;

extern proc GDALReleaseDimensions(dims : c_ptr(GDALDimensionH), nCount : c_size_t) : void;

extern proc GDALDimensionGetName(hDim : GDALDimensionH) : c_ptrConst(c_char);

extern proc GDALDimensionGetFullName(hDim : GDALDimensionH) : c_ptrConst(c_char);

extern proc GDALDimensionGetType(hDim : GDALDimensionH) : c_ptrConst(c_char);

extern proc GDALDimensionGetDirection(hDim : GDALDimensionH) : c_ptrConst(c_char);

extern proc GDALDimensionGetSize(hDim : GDALDimensionH) : GUInt64;

extern proc GDALDimensionGetIndexingVariable(hDim : GDALDimensionH) : GDALMDArrayH;

extern proc GDALDimensionSetIndexingVariable(hDim : GDALDimensionH, hArray : GDALMDArrayH) : c_int;

extern proc GDALDimensionRename(hDim : GDALDimensionH, pszNewName : c_ptrConst(c_char)) : bool;

// ==== c2chapel typedefs ====

// CPLErr enum
extern type CPLErr = c_int;
extern const CE_None :CPLErr;
extern const CE_Debug :CPLErr;
extern const CE_Warning :CPLErr;
extern const CE_Failure :CPLErr;
extern const CE_Fatal :CPLErr;


extern type CPLErrorHandler = c_fn_ptr;

extern type CPLErrorNum = c_int;

// Opaque struct?
extern record CPLVirtualMem {};

// CPLVirtualMemAccessMode enum
extern type CPLVirtualMemAccessMode = c_int;
extern const VIRTUALMEM_READONLY :CPLVirtualMemAccessMode;
extern const VIRTUALMEM_READONLY_ENFORCED :CPLVirtualMemAccessMode;
extern const VIRTUALMEM_READWRITE :CPLVirtualMemAccessMode;


extern type CPLVirtualMemCachePageCbk = c_fn_ptr;

extern type CPLVirtualMemFreeUserData = c_fn_ptr;

extern type CPLVirtualMemUnCachePageCbk = c_fn_ptr;

// CPLXMLNodeType enum
extern type CPLXMLNodeType = c_int;
extern const CXT_Element :CPLXMLNodeType;
extern const CXT_Text :CPLXMLNodeType;
extern const CXT_Attribute :CPLXMLNodeType;
extern const CXT_Comment :CPLXMLNodeType;
extern const CXT_Literal :CPLXMLNodeType;


extern type CSLConstList = c_ptr(c_ptr(c_char));

extern type GBool = c_int;

extern type GByte = c_uchar;

// GDALAccess enum
extern type GDALAccess = c_int;
extern const GA_ReadOnly :GDALAccess;
extern const GA_Update :GDALAccess;


extern type GDALAsyncReaderH = c_ptr(void);

// GDALAsyncStatusType enum
extern type GDALAsyncStatusType = c_int;
extern const GARIO_PENDING :GDALAsyncStatusType;
extern const GARIO_UPDATE :GDALAsyncStatusType;
extern const GARIO_ERROR :GDALAsyncStatusType;
extern const GARIO_COMPLETE :GDALAsyncStatusType;
extern const GARIO_TypeCount :GDALAsyncStatusType;


// Typedef'd pointer to struct
extern type GDALAttributeH;

extern record GDALColorEntry {
  var c1 : c_short;
  var c2 : c_short;
  var c3 : c_short;
  var c4 : c_short;
}

// GDALColorInterp enum
extern type GDALColorInterp = c_int;
extern const GCI_Undefined :GDALColorInterp;
extern const GCI_GrayIndex :GDALColorInterp;
extern const GCI_PaletteIndex :GDALColorInterp;
extern const GCI_RedBand :GDALColorInterp;
extern const GCI_GreenBand :GDALColorInterp;
extern const GCI_BlueBand :GDALColorInterp;
extern const GCI_AlphaBand :GDALColorInterp;
extern const GCI_HueBand :GDALColorInterp;
extern const GCI_SaturationBand :GDALColorInterp;
extern const GCI_LightnessBand :GDALColorInterp;
extern const GCI_CyanBand :GDALColorInterp;
extern const GCI_MagentaBand :GDALColorInterp;
extern const GCI_YellowBand :GDALColorInterp;
extern const GCI_BlackBand :GDALColorInterp;
extern const GCI_YCbCr_YBand :GDALColorInterp;
extern const GCI_YCbCr_CbBand :GDALColorInterp;
extern const GCI_YCbCr_CrBand :GDALColorInterp;
extern const GCI_Max :GDALColorInterp;


extern type GDALColorTableH = c_ptr(void);

// GDALDataType enum
extern type GDALDataType = c_int;
extern const GDT_Unknown :GDALDataType;
extern const GDT_Byte :GDALDataType;
extern const GDT_Int8 :GDALDataType;
extern const GDT_UInt16 :GDALDataType;
extern const GDT_Int16 :GDALDataType;
extern const GDT_UInt32 :GDALDataType;
extern const GDT_Int32 :GDALDataType;
extern const GDT_UInt64 :GDALDataType;
extern const GDT_Int64 :GDALDataType;
extern const GDT_Float32 :GDALDataType;
extern const GDT_Float64 :GDALDataType;
extern const GDT_CInt16 :GDALDataType;
extern const GDT_CInt32 :GDALDataType;
extern const GDT_CFloat32 :GDALDataType;
extern const GDT_CFloat64 :GDALDataType;
extern const GDT_TypeCount :GDALDataType;


extern type GDALDatasetH = c_ptr(void);

extern type GDALDerivedPixelFunc = c_fn_ptr;

extern type GDALDerivedPixelFuncWithArgs = c_fn_ptr;

// Typedef'd pointer to struct
extern type GDALDimensionH;

extern type GDALDriverH = c_ptr(void);

// Typedef'd pointer to struct
extern type GDALEDTComponentH;

// GDALExtendedDataTypeClass enum
extern type GDALExtendedDataTypeClass = c_int;
extern const GEDTC_NUMERIC :GDALExtendedDataTypeClass;
extern const GEDTC_STRING :GDALExtendedDataTypeClass;
extern const GEDTC_COMPOUND :GDALExtendedDataTypeClass;


// Typedef'd pointer to struct
extern type GDALExtendedDataTypeH;

// GDALExtendedDataTypeSubType enum
extern type GDALExtendedDataTypeSubType = c_int;
extern const GEDTST_NONE :GDALExtendedDataTypeSubType;
extern const GEDTST_JSON :GDALExtendedDataTypeSubType;


// Typedef'd pointer to struct
extern type GDALGroupH;

// Typedef'd pointer to struct
extern type GDALMDArrayH;

extern type GDALMajorObjectH = c_ptr(void);

// GDALPaletteInterp enum
extern type GDALPaletteInterp = c_int;
extern const GPI_Gray :GDALPaletteInterp;
extern const GPI_RGB :GDALPaletteInterp;
extern const GPI_CMYK :GDALPaletteInterp;
extern const GPI_HLS :GDALPaletteInterp;


extern type GDALProgressFunc = c_fn_ptr;

extern type GDALQueryLoggerFunc = c_fn_ptr;

// GDALRATFieldType enum
extern type GDALRATFieldType = c_int;
extern const GFT_Integer :GDALRATFieldType;
extern const GFT_Real :GDALRATFieldType;
extern const GFT_String :GDALRATFieldType;


// GDALRATFieldUsage enum
extern type GDALRATFieldUsage = c_int;
extern const GFU_Generic :GDALRATFieldUsage;
extern const GFU_PixelCount :GDALRATFieldUsage;
extern const GFU_Name :GDALRATFieldUsage;
extern const GFU_Min :GDALRATFieldUsage;
extern const GFU_Max :GDALRATFieldUsage;
extern const GFU_MinMax :GDALRATFieldUsage;
extern const GFU_Red :GDALRATFieldUsage;
extern const GFU_Green :GDALRATFieldUsage;
extern const GFU_Blue :GDALRATFieldUsage;
extern const GFU_Alpha :GDALRATFieldUsage;
extern const GFU_RedMin :GDALRATFieldUsage;
extern const GFU_GreenMin :GDALRATFieldUsage;
extern const GFU_BlueMin :GDALRATFieldUsage;
extern const GFU_AlphaMin :GDALRATFieldUsage;
extern const GFU_RedMax :GDALRATFieldUsage;
extern const GFU_GreenMax :GDALRATFieldUsage;
extern const GFU_BlueMax :GDALRATFieldUsage;
extern const GFU_AlphaMax :GDALRATFieldUsage;
extern const GFU_MaxCount :GDALRATFieldUsage;


// GDALRATTableType enum
extern type GDALRATTableType = c_int;
extern const GRTT_THEMATIC :GDALRATTableType;
extern const GRTT_ATHEMATIC :GDALRATTableType;


// GDALRIOResampleAlg enum
extern type GDALRIOResampleAlg = c_int;
extern const GRIORA_NearestNeighbour :GDALRIOResampleAlg;
extern const GRIORA_Bilinear :GDALRIOResampleAlg;
extern const GRIORA_Cubic :GDALRIOResampleAlg;
extern const GRIORA_CubicSpline :GDALRIOResampleAlg;
extern const GRIORA_Lanczos :GDALRIOResampleAlg;
extern const GRIORA_Average :GDALRIOResampleAlg;
extern const GRIORA_Mode :GDALRIOResampleAlg;
extern const GRIORA_Gauss :GDALRIOResampleAlg;
extern const GRIORA_RESERVED_START :GDALRIOResampleAlg;
extern const GRIORA_RESERVED_END :GDALRIOResampleAlg;
extern const GRIORA_RMS :GDALRIOResampleAlg;
extern const GRIORA_LAST :GDALRIOResampleAlg;


extern record GDALRPCInfoV1 {
  var dfLINE_OFF : c_double;
  var dfSAMP_OFF : c_double;
  var dfLAT_OFF : c_double;
  var dfLONG_OFF : c_double;
  var dfHEIGHT_OFF : c_double;
  var dfLINE_SCALE : c_double;
  var dfSAMP_SCALE : c_double;
  var dfLAT_SCALE : c_double;
  var dfLONG_SCALE : c_double;
  var dfHEIGHT_SCALE : c_double;
  var adfLINE_NUM_COEFF : c_ptr(c_double);
  var adfLINE_DEN_COEFF : c_ptr(c_double);
  var adfSAMP_NUM_COEFF : c_ptr(c_double);
  var adfSAMP_DEN_COEFF : c_ptr(c_double);
  var dfMIN_LONG : c_double;
  var dfMIN_LAT : c_double;
  var dfMAX_LONG : c_double;
  var dfMAX_LAT : c_double;
}

extern record GDALRPCInfoV2 {
  var dfLINE_OFF : c_double;
  var dfSAMP_OFF : c_double;
  var dfLAT_OFF : c_double;
  var dfLONG_OFF : c_double;
  var dfHEIGHT_OFF : c_double;
  var dfLINE_SCALE : c_double;
  var dfSAMP_SCALE : c_double;
  var dfLAT_SCALE : c_double;
  var dfLONG_SCALE : c_double;
  var dfHEIGHT_SCALE : c_double;
  var adfLINE_NUM_COEFF : c_ptr(c_double);
  var adfLINE_DEN_COEFF : c_ptr(c_double);
  var adfSAMP_NUM_COEFF : c_ptr(c_double);
  var adfSAMP_DEN_COEFF : c_ptr(c_double);
  var dfMIN_LONG : c_double;
  var dfMIN_LAT : c_double;
  var dfMAX_LONG : c_double;
  var dfMAX_LAT : c_double;
  var dfERR_BIAS : c_double;
  var dfERR_RAND : c_double;
}

// GDALRWFlag enum
extern type GDALRWFlag = c_int;
extern const GF_Read :GDALRWFlag;
extern const GF_Write :GDALRWFlag;


extern type GDALRasterAttributeTableH = c_ptr(void);

extern type GDALRasterBandH = c_ptr(void);

extern record GDALRasterIOExtraArg {
  var nVersion : c_int;
  var eResampleAlg : GDALRIOResampleAlg;
  var pfnProgress : GDALProgressFunc;
  var pProgressData : c_ptr(void);
  var bFloatingPointWindowValidity : c_int;
  var dfXOff : c_double;
  var dfYOff : c_double;
  var dfXSize : c_double;
  var dfYSize : c_double;
}

// GDALRelationshipCardinality enum
extern type GDALRelationshipCardinality = c_int;
extern const GRC_ONE_TO_ONE :GDALRelationshipCardinality;
extern const GRC_ONE_TO_MANY :GDALRelationshipCardinality;
extern const GRC_MANY_TO_ONE :GDALRelationshipCardinality;
extern const GRC_MANY_TO_MANY :GDALRelationshipCardinality;


extern type GDALRelationshipH = c_ptr(void);

// GDALRelationshipType enum
extern type GDALRelationshipType = c_int;
extern const GRT_COMPOSITE :GDALRelationshipType;
extern const GRT_ASSOCIATION :GDALRelationshipType;
extern const GRT_AGGREGATION :GDALRelationshipType;


// Typedef'd pointer to struct
extern type GDALSubdatasetInfoH;

// GDALTileOrganization enum
extern type GDALTileOrganization = c_int;
extern const GTO_TIP :GDALTileOrganization;
extern const GTO_BIT :GDALTileOrganization;
extern const GTO_BSQ :GDALTileOrganization;


extern type GDALVRTProcessedDatasetFuncFree = c_fn_ptr;

extern type GDALVRTProcessedDatasetFuncInit = c_fn_ptr;

extern type GDALVRTProcessedDatasetFuncProcess = c_fn_ptr;

extern record GDAL_GCP {
  var pszId : c_ptr(c_char);
  var pszInfo : c_ptr(c_char);
  var dfGCPPixel : c_double;
  var dfGCPLine : c_double;
  var dfGCPX : c_double;
  var dfGCPY : c_double;
  var dfGCPZ : c_double;
}

extern type GInt16 = c_short;

extern type GInt32 = c_int;

extern type GInt64 = GIntBig;

extern type GInt8 = c_schar;

extern type GIntBig = c_longlong;

extern type GPtrDiff_t = GIntBig;

extern type GSpacing = GIntBig;

extern type GUInt16 = c_ushort;

extern type GUInt32 = c_uint;

extern type GUInt64 = GUIntBig;

extern type GUIntBig = c_ulonglong;

extern type OGRBoolean = c_int;

extern record OGRCodedValue {
  var pszCode : c_ptr(c_char);
  var pszValue : c_ptr(c_char);
}

extern type OGRCoordinateTransformationH = c_ptr(void);

extern type OGRDataSourceH = c_ptr(void);

extern record OGREnvelope {
  var MinX : c_double;
  var MaxX : c_double;
  var MinY : c_double;
  var MaxY : c_double;
}

extern record OGREnvelope3D {
  var MinX : c_double;
  var MaxX : c_double;
  var MinY : c_double;
  var MaxY : c_double;
  var MinZ : c_double;
  var MaxZ : c_double;
}

extern type OGRErr = c_int;

extern type OGRFeatureDefnH = c_ptr(void);

extern type OGRFeatureH = c_ptr(void);

// Anonymous union or struct was encountered within and skipped.
extern union OGRField {
  var Integer : c_int;
  var Integer64 : GIntBig;
  var Real : c_double;
  var String : c_ptr(c_char);
}

extern type OGRFieldDefnH = c_ptr(void);

// Typedef'd pointer to struct
extern type OGRFieldDomainH;

// OGRFieldDomainMergePolicy enum
extern type OGRFieldDomainMergePolicy = c_int;
extern const OFDMP_DEFAULT_VALUE :OGRFieldDomainMergePolicy;
extern const OFDMP_SUM :OGRFieldDomainMergePolicy;
extern const OFDMP_GEOMETRY_WEIGHTED :OGRFieldDomainMergePolicy;


// OGRFieldDomainSplitPolicy enum
extern type OGRFieldDomainSplitPolicy = c_int;
extern const OFDSP_DEFAULT_VALUE :OGRFieldDomainSplitPolicy;
extern const OFDSP_DUPLICATE :OGRFieldDomainSplitPolicy;
extern const OFDSP_GEOMETRY_RATIO :OGRFieldDomainSplitPolicy;


// OGRFieldDomainType enum
extern type OGRFieldDomainType = c_int;
extern const OFDT_CODED :OGRFieldDomainType;
extern const OFDT_RANGE :OGRFieldDomainType;
extern const OFDT_GLOB :OGRFieldDomainType;


// OGRFieldSubType enum
extern type OGRFieldSubType = c_int;
extern const OFSTNone :OGRFieldSubType;
extern const OFSTBoolean :OGRFieldSubType;
extern const OFSTInt16 :OGRFieldSubType;
extern const OFSTFloat32 :OGRFieldSubType;
extern const OFSTJSON :OGRFieldSubType;
extern const OFSTUUID :OGRFieldSubType;
extern const OFSTMaxSubType :OGRFieldSubType;


// OGRFieldType enum
extern type OGRFieldType = c_int;
extern const OFTInteger :OGRFieldType;
extern const OFTIntegerList :OGRFieldType;
extern const OFTReal :OGRFieldType;
extern const OFTRealList :OGRFieldType;
extern const OFTString :OGRFieldType;
extern const OFTStringList :OGRFieldType;
extern const OFTWideString :OGRFieldType;
extern const OFTWideStringList :OGRFieldType;
extern const OFTBinary :OGRFieldType;
extern const OFTDate :OGRFieldType;
extern const OFTTime :OGRFieldType;
extern const OFTDateTime :OGRFieldType;
extern const OFTInteger64 :OGRFieldType;
extern const OFTInteger64List :OGRFieldType;
extern const OFTMaxType :OGRFieldType;


// Typedef'd pointer to struct
extern type OGRGeomCoordinatePrecisionH;

// Typedef'd pointer to struct
extern type OGRGeomFieldDefnH;

// Typedef'd pointer to struct
extern type OGRGeomTransformerH;

extern type OGRGeometryH = c_ptr(void);

extern record OGRGeometryTypeCounter {
  var eGeomType : OGRwkbGeometryType;
  var nCount : int(64);
}

// OGRJustification enum
extern type OGRJustification = c_int;
extern const OJUndefined :OGRJustification;
extern const OJLeft :OGRJustification;
extern const OJRight :OGRJustification;


extern type OGRLayerH = c_ptr(void);

// Typedef'd pointer to struct
extern type OGRPreparedGeometryH;

extern type OGRSFDriverH = c_ptr(void);

// OGRSTBrushParam enum
extern type OGRSTBrushParam = c_int;
extern const OGRSTBrushFColor :OGRSTBrushParam;
extern const OGRSTBrushBColor :OGRSTBrushParam;
extern const OGRSTBrushId :OGRSTBrushParam;
extern const OGRSTBrushAngle :OGRSTBrushParam;
extern const OGRSTBrushSize :OGRSTBrushParam;
extern const OGRSTBrushDx :OGRSTBrushParam;
extern const OGRSTBrushDy :OGRSTBrushParam;
extern const OGRSTBrushPriority :OGRSTBrushParam;
extern const OGRSTBrushLast :OGRSTBrushParam;


// OGRSTClassId enum
extern type OGRSTClassId = c_int;
extern const OGRSTCNone :OGRSTClassId;
extern const OGRSTCPen :OGRSTClassId;
extern const OGRSTCBrush :OGRSTClassId;
extern const OGRSTCSymbol :OGRSTClassId;
extern const OGRSTCLabel :OGRSTClassId;
extern const OGRSTCVector :OGRSTClassId;


// OGRSTLabelParam enum
extern type OGRSTLabelParam = c_int;
extern const OGRSTLabelFontName :OGRSTLabelParam;
extern const OGRSTLabelSize :OGRSTLabelParam;
extern const OGRSTLabelTextString :OGRSTLabelParam;
extern const OGRSTLabelAngle :OGRSTLabelParam;
extern const OGRSTLabelFColor :OGRSTLabelParam;
extern const OGRSTLabelBColor :OGRSTLabelParam;
extern const OGRSTLabelPlacement :OGRSTLabelParam;
extern const OGRSTLabelAnchor :OGRSTLabelParam;
extern const OGRSTLabelDx :OGRSTLabelParam;
extern const OGRSTLabelDy :OGRSTLabelParam;
extern const OGRSTLabelPerp :OGRSTLabelParam;
extern const OGRSTLabelBold :OGRSTLabelParam;
extern const OGRSTLabelItalic :OGRSTLabelParam;
extern const OGRSTLabelUnderline :OGRSTLabelParam;
extern const OGRSTLabelPriority :OGRSTLabelParam;
extern const OGRSTLabelStrikeout :OGRSTLabelParam;
extern const OGRSTLabelStretch :OGRSTLabelParam;
extern const OGRSTLabelAdjHor :OGRSTLabelParam;
extern const OGRSTLabelAdjVert :OGRSTLabelParam;
extern const OGRSTLabelHColor :OGRSTLabelParam;
extern const OGRSTLabelOColor :OGRSTLabelParam;
extern const OGRSTLabelLast :OGRSTLabelParam;


// OGRSTPenParam enum
extern type OGRSTPenParam = c_int;
extern const OGRSTPenColor :OGRSTPenParam;
extern const OGRSTPenWidth :OGRSTPenParam;
extern const OGRSTPenPattern :OGRSTPenParam;
extern const OGRSTPenId :OGRSTPenParam;
extern const OGRSTPenPerOffset :OGRSTPenParam;
extern const OGRSTPenCap :OGRSTPenParam;
extern const OGRSTPenJoin :OGRSTPenParam;
extern const OGRSTPenPriority :OGRSTPenParam;
extern const OGRSTPenLast :OGRSTPenParam;


// OGRSTSymbolParam enum
extern type OGRSTSymbolParam = c_int;
extern const OGRSTSymbolId :OGRSTSymbolParam;
extern const OGRSTSymbolAngle :OGRSTSymbolParam;
extern const OGRSTSymbolColor :OGRSTSymbolParam;
extern const OGRSTSymbolSize :OGRSTSymbolParam;
extern const OGRSTSymbolDx :OGRSTSymbolParam;
extern const OGRSTSymbolDy :OGRSTSymbolParam;
extern const OGRSTSymbolStep :OGRSTSymbolParam;
extern const OGRSTSymbolPerp :OGRSTSymbolParam;
extern const OGRSTSymbolOffset :OGRSTSymbolParam;
extern const OGRSTSymbolPriority :OGRSTSymbolParam;
extern const OGRSTSymbolFontName :OGRSTSymbolParam;
extern const OGRSTSymbolOColor :OGRSTSymbolParam;
extern const OGRSTSymbolLast :OGRSTSymbolParam;


// OGRSTUnitId enum
extern type OGRSTUnitId = c_int;
extern const OGRSTUGround :OGRSTUnitId;
extern const OGRSTUPixel :OGRSTUnitId;
extern const OGRSTUPoints :OGRSTUnitId;
extern const OGRSTUMM :OGRSTUnitId;
extern const OGRSTUCM :OGRSTUnitId;
extern const OGRSTUInches :OGRSTUnitId;


extern type OGRSpatialReferenceH = c_ptr(void);

extern type OGRStyleMgrH = c_ptr(void);

extern type OGRStyleTableH = c_ptr(void);

extern type OGRStyleToolH = c_ptr(void);

// OGRwkbByteOrder enum
extern type OGRwkbByteOrder = c_int;
extern const wkbXDR :OGRwkbByteOrder;
extern const wkbNDR :OGRwkbByteOrder;


// Opaque struct?
extern record OGRwkbExportOptions {};

// OGRwkbGeometryType enum
extern type OGRwkbGeometryType = c_int;
extern const wkbUnknown :OGRwkbGeometryType;
extern const wkbPoint :OGRwkbGeometryType;
extern const wkbLineString :OGRwkbGeometryType;
extern const wkbPolygon :OGRwkbGeometryType;
extern const wkbMultiPoint :OGRwkbGeometryType;
extern const wkbMultiLineString :OGRwkbGeometryType;
extern const wkbMultiPolygon :OGRwkbGeometryType;
extern const wkbGeometryCollection :OGRwkbGeometryType;
extern const wkbCircularString :OGRwkbGeometryType;
extern const wkbCompoundCurve :OGRwkbGeometryType;
extern const wkbCurvePolygon :OGRwkbGeometryType;
extern const wkbMultiCurve :OGRwkbGeometryType;
extern const wkbMultiSurface :OGRwkbGeometryType;
extern const wkbCurve :OGRwkbGeometryType;
extern const wkbSurface :OGRwkbGeometryType;
extern const wkbPolyhedralSurface :OGRwkbGeometryType;
extern const wkbTIN :OGRwkbGeometryType;
extern const wkbTriangle :OGRwkbGeometryType;
extern const wkbNone :OGRwkbGeometryType;
extern const wkbLinearRing :OGRwkbGeometryType;
extern const wkbCircularStringZ :OGRwkbGeometryType;
extern const wkbCompoundCurveZ :OGRwkbGeometryType;
extern const wkbCurvePolygonZ :OGRwkbGeometryType;
extern const wkbMultiCurveZ :OGRwkbGeometryType;
extern const wkbMultiSurfaceZ :OGRwkbGeometryType;
extern const wkbCurveZ :OGRwkbGeometryType;
extern const wkbSurfaceZ :OGRwkbGeometryType;
extern const wkbPolyhedralSurfaceZ :OGRwkbGeometryType;
extern const wkbTINZ :OGRwkbGeometryType;
extern const wkbTriangleZ :OGRwkbGeometryType;
extern const wkbPointM :OGRwkbGeometryType;
extern const wkbLineStringM :OGRwkbGeometryType;
extern const wkbPolygonM :OGRwkbGeometryType;
extern const wkbMultiPointM :OGRwkbGeometryType;
extern const wkbMultiLineStringM :OGRwkbGeometryType;
extern const wkbMultiPolygonM :OGRwkbGeometryType;
extern const wkbGeometryCollectionM :OGRwkbGeometryType;
extern const wkbCircularStringM :OGRwkbGeometryType;
extern const wkbCompoundCurveM :OGRwkbGeometryType;
extern const wkbCurvePolygonM :OGRwkbGeometryType;
extern const wkbMultiCurveM :OGRwkbGeometryType;
extern const wkbMultiSurfaceM :OGRwkbGeometryType;
extern const wkbCurveM :OGRwkbGeometryType;
extern const wkbSurfaceM :OGRwkbGeometryType;
extern const wkbPolyhedralSurfaceM :OGRwkbGeometryType;
extern const wkbTINM :OGRwkbGeometryType;
extern const wkbTriangleM :OGRwkbGeometryType;
extern const wkbPointZM :OGRwkbGeometryType;
extern const wkbLineStringZM :OGRwkbGeometryType;
extern const wkbPolygonZM :OGRwkbGeometryType;
extern const wkbMultiPointZM :OGRwkbGeometryType;
extern const wkbMultiLineStringZM :OGRwkbGeometryType;
extern const wkbMultiPolygonZM :OGRwkbGeometryType;
extern const wkbGeometryCollectionZM :OGRwkbGeometryType;
extern const wkbCircularStringZM :OGRwkbGeometryType;
extern const wkbCompoundCurveZM :OGRwkbGeometryType;
extern const wkbCurvePolygonZM :OGRwkbGeometryType;
extern const wkbMultiCurveZM :OGRwkbGeometryType;
extern const wkbMultiSurfaceZM :OGRwkbGeometryType;
extern const wkbCurveZM :OGRwkbGeometryType;
extern const wkbSurfaceZM :OGRwkbGeometryType;
extern const wkbPolyhedralSurfaceZM :OGRwkbGeometryType;
extern const wkbTINZM :OGRwkbGeometryType;
extern const wkbTriangleZM :OGRwkbGeometryType;
extern const wkbPoint25D :OGRwkbGeometryType;
extern const wkbLineString25D :OGRwkbGeometryType;
extern const wkbPolygon25D :OGRwkbGeometryType;
extern const wkbMultiPoint25D :OGRwkbGeometryType;
extern const wkbMultiLineString25D :OGRwkbGeometryType;
extern const wkbMultiPolygon25D :OGRwkbGeometryType;
extern const wkbGeometryCollection25D :OGRwkbGeometryType;


// OGRwkbVariant enum
extern type OGRwkbVariant = c_int;
extern const wkbVariantOldOgc :OGRwkbVariant;
extern const wkbVariantIso :OGRwkbVariant;
extern const wkbVariantPostGIS1 :OGRwkbVariant;


extern type VRTPDWorkingDataPtr = c_ptr(void);

// Opaque struct?
extern record VSIDIR {};

extern type VSIFilesystemPluginAdviseReadCallback = c_fn_ptr;

extern record VSIFilesystemPluginCallbacksStruct {
  var pUserData : c_ptr(void);
  var stat : VSIFilesystemPluginStatCallback;
  var unlink : VSIFilesystemPluginUnlinkCallback;
  var rename : VSIFilesystemPluginRenameCallback;
  var mkdir : VSIFilesystemPluginMkdirCallback;
  var rmdir : VSIFilesystemPluginRmdirCallback;
  var read_dir : VSIFilesystemPluginReadDirCallback;
  var open : VSIFilesystemPluginOpenCallback;
  var tell : VSIFilesystemPluginTellCallback;
  var seek : VSIFilesystemPluginSeekCallback;
  var read : VSIFilesystemPluginReadCallback;
  var read_multi_range : VSIFilesystemPluginReadMultiRangeCallback;
  var get_range_status : VSIFilesystemPluginGetRangeStatusCallback;
  var eof : VSIFilesystemPluginEofCallback;
  var write : VSIFilesystemPluginWriteCallback;
  var flush : VSIFilesystemPluginFlushCallback;
  var truncate : VSIFilesystemPluginTruncateCallback;
  var close : VSIFilesystemPluginCloseCallback;
  var nBufferSize : c_size_t;
  var nCacheSize : c_size_t;
  var sibling_files : VSIFilesystemPluginSiblingFilesCallback;
  var advise_read : VSIFilesystemPluginAdviseReadCallback;
}

extern type VSIFilesystemPluginCloseCallback = c_fn_ptr;

extern type VSIFilesystemPluginEofCallback = c_fn_ptr;

extern type VSIFilesystemPluginFlushCallback = c_fn_ptr;

extern type VSIFilesystemPluginGetRangeStatusCallback = c_fn_ptr;

extern type VSIFilesystemPluginMkdirCallback = c_fn_ptr;

extern type VSIFilesystemPluginOpenCallback = c_fn_ptr;

extern type VSIFilesystemPluginReadCallback = c_fn_ptr;

extern type VSIFilesystemPluginReadDirCallback = c_fn_ptr;

extern type VSIFilesystemPluginReadMultiRangeCallback = c_fn_ptr;

extern type VSIFilesystemPluginRenameCallback = c_fn_ptr;

extern type VSIFilesystemPluginRmdirCallback = c_fn_ptr;

extern type VSIFilesystemPluginSeekCallback = c_fn_ptr;

extern type VSIFilesystemPluginSiblingFilesCallback = c_fn_ptr;

extern type VSIFilesystemPluginStatCallback = c_fn_ptr;

extern type VSIFilesystemPluginTellCallback = c_fn_ptr;

extern type VSIFilesystemPluginTruncateCallback = c_fn_ptr;

extern type VSIFilesystemPluginUnlinkCallback = c_fn_ptr;

extern type VSIFilesystemPluginWriteCallback = c_fn_ptr;

// Opaque struct?
extern record VSILFILE {};

// VSIRangeStatus enum
extern type VSIRangeStatus = c_int;
extern const VSI_RANGE_STATUS_UNKNOWN :VSIRangeStatus;
extern const VSI_RANGE_STATUS_DATA :VSIRangeStatus;
extern const VSI_RANGE_STATUS_HOLE :VSIRangeStatus;


// Opaque struct?
extern record VSIStatBuf {};

// Opaque struct?
extern record VSIStatBufL {};

extern type VSIWriteFunction = c_fn_ptr;

extern type vsi_l_offset = GUIntBig;

// c2chapel thinks these typedefs are from the fake headers:
/*
extern type FILE = c_int;

// Opaque struct?
extern record MirBlob {};

// Opaque struct?
extern record MirBufferStream {};

// Opaque struct?
extern record MirConnection {};

// Opaque struct?
extern record MirDisplayConfig {};

extern type MirEGLNativeDisplayType = c_ptr(void);

extern type MirEGLNativeWindowType = c_ptr(void);

// Opaque struct?
extern record MirPersistentId {};

// Opaque struct?
extern record MirPromptSession {};

// Opaque struct?
extern record MirScreencast {};

// Opaque struct?
extern record MirSurface {};

// Opaque struct?
extern record MirSurfaceSpec {};

extern type _LOCK_RECURSIVE_T = c_int;

extern type _LOCK_T = c_int;

extern type __FILE = c_int;

extern type __ULong = c_int;

extern type __builtin_va_list = c_int;

extern type __dev_t = c_int;

extern type __gid_t = c_int;

extern type __gnuc_va_list = c_int;

extern type __int16_t = c_int;

extern type __int32_t = c_int;

extern type __int64_t = c_int;

extern type __int8_t = c_int;

extern type __int_least16_t = c_int;

extern type __int_least32_t = c_int;

extern type __loff_t = c_int;

extern type __off_t = c_int;

extern type __pid_t = c_int;

extern type __s16 = c_int;

extern type __s32 = c_int;

extern type __s64 = c_int;

extern type __s8 = c_int;

extern type __sigset_t = c_int;

extern type __tzinfo_type = c_int;

extern type __tzrule_type = c_int;

extern type __u16 = c_int;

extern type __u32 = c_int;

extern type __u64 = c_int;

extern type __u8 = c_int;

extern type __uid_t = c_int;

extern type __uint16_t = c_int;

extern type __uint32_t = c_int;

extern type __uint64_t = c_int;

extern type __uint8_t = c_int;

extern type __uint_least16_t = c_int;

extern type __uint_least32_t = c_int;

extern type _flock_t = c_int;

extern type _fpos_t = c_int;

extern type _iconv_t = c_int;

extern type _mbstate_t = c_int;

extern type _off64_t = c_int;

extern type _off_t = c_int;

extern type _sig_func_ptr = c_int;

extern type _ssize_t = c_int;

extern type _types_fd_set = c_int;

extern type bool = _Bool;

extern type caddr_t = c_int;

extern type clock_t = c_int;

extern type clockid_t = c_int;

extern type cookie_close_function_t = c_int;

extern type cookie_io_functions_t = c_int;

extern type cookie_read_function_t = c_int;

extern type cookie_seek_function_t = c_int;

extern type cookie_write_function_t = c_int;

extern type daddr_t = c_int;

extern type dev_t = c_int;

extern type div_t = c_int;

extern type fd_mask = c_int;

extern type fpos_t = c_int;

extern type gid_t = c_int;

extern type ino_t = c_int;

extern type int16_t = c_int;

extern type int32_t = c_int;

extern type int64_t = c_int;

extern type int8_t = c_int;

extern type int_fast16_t = c_int;

extern type int_fast32_t = c_int;

extern type int_fast64_t = c_int;

extern type int_fast8_t = c_int;

extern type int_least16_t = c_int;

extern type int_least32_t = c_int;

extern type int_least64_t = c_int;

extern type int_least8_t = c_int;

extern type intmax_t = c_int;

extern type intptr_t = c_int;

extern type jmp_buf = c_int;

extern type key_t = c_int;

extern type ldiv_t = c_int;

extern type lldiv_t = c_int;

extern type mbstate_t = c_int;

extern type mode_t = c_int;

extern type nlink_t = c_int;

extern type off_t = c_int;

extern type pid_t = c_int;

extern type pthread_attr_t = c_int;

extern type pthread_barrier_t = c_int;

extern type pthread_barrierattr_t = c_int;

extern type pthread_cond_t = c_int;

extern type pthread_condattr_t = c_int;

extern type pthread_key_t = c_int;

extern type pthread_mutex_t = c_int;

extern type pthread_mutexattr_t = c_int;

extern type pthread_once_t = c_int;

extern type pthread_rwlock_t = c_int;

extern type pthread_rwlockattr_t = c_int;

extern type pthread_spinlock_t = c_int;

extern type pthread_t = c_int;

extern type ptrdiff_t = c_int;

extern type rlim_t = c_int;

extern type sa_family_t = c_int;

extern type sem_t = c_int;

extern type sig_atomic_t = c_int;

extern type siginfo_t = c_int;

extern type sigjmp_buf = c_int;

extern type sigset_t = c_int;

extern type size_t = c_int;

extern type ssize_t = c_int;

extern type stack_t = c_int;

extern type suseconds_t = c_int;

extern type time_t = c_int;

extern type timer_t = c_int;

extern type u_char = c_int;

extern type u_int = c_int;

extern type u_long = c_int;

extern type u_short = c_int;

extern type uid_t = c_int;

extern type uint = c_int;

extern type uint16_t = c_int;

extern type uint32_t = c_int;

extern type uint64_t = c_int;

extern type uint8_t = c_int;

extern type uint_fast16_t = c_int;

extern type uint_fast32_t = c_int;

extern type uint_fast64_t = c_int;

extern type uint_fast8_t = c_int;

extern type uint_least16_t = c_int;

extern type uint_least32_t = c_int;

extern type uint_least64_t = c_int;

extern type uint_least8_t = c_int;

extern type uintmax_t = c_int;

extern type uintptr_t = c_int;

extern type useconds_t = c_int;

extern type ushort = c_int;

extern type va_list = c_int;

extern type wchar_t = c_int;

extern type wint_t = c_int;

// Opaque struct?
extern record xcb_connection_t {};

extern type xcb_visualid_t = uint(32);

extern type xcb_window_t = uint(32);

extern type z_stream = c_int;

*/

}

}