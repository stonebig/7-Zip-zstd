OBJS = \
  $O\StdAfx.obj \
  $(CURRENT_OBJS) \
  $(COMMON_OBJS) \
  $(WIN_OBJS) \
  $(WIN_CTRL_OBJS) \
  $(7ZIP_COMMON_OBJS) \
  $(AR_OBJS) \
  $(AR_COMMON_OBJS) \
  $(UI_COMMON_OBJS) \
  $(AGENT_OBJS) \
  $(CONSOLE_OBJS) \
  $(EXPLORER_OBJS) \
  $(FM_OBJS) \
  $(GUI_OBJS) \
  $(7Z_OBJS) \
  $(CAB_OBJS) \
  $(CHM_OBJS) \
  $(COM_OBJS) \
  $(ISO_OBJS) \
  $(NSIS_OBJS) \
  $(RAR_OBJS) \
  $(TAR_OBJS) \
  $(UDF_OBJS) \
  $(WIM_OBJS) \
  $(ZIP_OBJS) \
  $(COMPRESS_OBJS) \
  $(CRYPTO_OBJS) \
  $(C_OBJS) \
# stonebig  $(BROTLI_OBJS) \
  $(HASHES_OBJS) \
# stonebig  $(LIZARD_OBJS) \
  $(LZ4_OBJS) \
# stonebig  $(LZ5_OBJS) \
  $(ZSTD_OBJS) \
  $(ZSTDMT_OBJS) \
  $(FASTLZMA2_OBJS) \
  $(ASM_OBJS) \
  $O\resource.res \

!include "../../../Build.mak"

# MAK_SINGLE_FILE = 1

!IFDEF MAK_SINGLE_FILE

!IFDEF CURRENT_OBJS
$(CURRENT_OBJS): ./$(*B).cpp
	$(COMPL)
!ENDIF


!IFDEF COMMON_OBJS
$(COMMON_OBJS): ../../../Common/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF WIN_OBJS
$(WIN_OBJS): ../../../Windows/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF WIN_CTRL_OBJS
$(WIN_CTRL_OBJS): ../../../Windows/Control/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF 7ZIP_COMMON_OBJS
$(7ZIP_COMMON_OBJS): ../../Common/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF AR_OBJS
$(AR_OBJS): ../../Archive/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF AR_COMMON_OBJS
$(AR_COMMON_OBJS): ../../Archive/Common/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF 7Z_OBJS
$(7Z_OBJS): ../../Archive/7z/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF CAB_OBJS
$(CAB_OBJS): ../../Archive/Cab/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF CHM_OBJS
$(CHM_OBJS): ../../Archive/Chm/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF COM_OBJS
$(COM_OBJS): ../../Archive/Com/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF ISO_OBJS
$(ISO_OBJS): ../../Archive/Iso/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF NSIS_OBJS
$(NSIS_OBJS): ../../Archive/Nsis/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF RAR_OBJS
$(RAR_OBJS): ../../Archive/Rar/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF TAR_OBJS
$(TAR_OBJS): ../../Archive/Tar/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF UDF_OBJS
$(UDF_OBJS): ../../Archive/Udf/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF WIM_OBJS
$(WIM_OBJS): ../../Archive/Wim/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF ZIP_OBJS
$(ZIP_OBJS): ../../Archive/Zip/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF COMPRESS_OBJS
$(COMPRESS_OBJS): ../../Compress/$(*B).cpp
	$(COMPL_O2)
!ENDIF

!IFDEF CRYPTO_OBJS
$(CRYPTO_OBJS): ../../Crypto/$(*B).cpp
	$(COMPL_O2)
!ENDIF

!IFDEF UI_COMMON_OBJS
$(UI_COMMON_OBJS): ../../UI/Common/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF AGENT_OBJS
$(AGENT_OBJS): ../../UI/Agent/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF CONSOLE_OBJS
$(CONSOLE_OBJS): ../../UI/Console/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF EXPLORER_OBJS
$(EXPLORER_OBJS): ../../UI/Explorer/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF FM_OBJS
$(FM_OBJS): ../../UI/FileManager/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF GUI_OBJS
$(GUI_OBJS): ../../UI/GUI/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF C_OBJS
$(C_OBJS): ../../../../C/$(*B).c
	$(COMPL_O2)
!ENDIF

# stonebig!IFDEF BROTLI_OBJS
# stonebig$(BROTLI_OBJS): ../../../../C/brotli/$(*B).c
# stonebig	$(COMPL_O2)
# stonebig!ENDIF

# stonebig!IFDEF LIZARD_OBJS
# stonebig$(LIZARD_OBJS): ../../../../C/lizard/$(*B).c
# stonebig	$(COMPL_O2)
# stonebig!ENDIF

!IFDEF LZ4_OBJS
$(LZ4_OBJS): ../../../../C/lz4/$(*B).c
	$(COMPL_O2)
!ENDIF

# stonebig!IFDEF LZ5_OBJS
# stonebig$(LZ5_OBJS): ../../../../C/lz5/$(*B).c
# stonebig	$(COMPL_O2)
# stonebig!ENDIF

!IFDEF ZSTD_OBJS
$(ZSTD_OBJS): ../../../../C/zstd/$(*B).c
	$(COMPL_O2)
!ENDIF

!IFDEF ZSTDMT_OBJS
$(ZSTDMT_OBJS): ../../../../C/zstdmt/$(*B).c
	$(COMPL_O2)
!ENDIF

!IFDEF FASTLZMA2_OBJS
$(FASTLZMA2_OBJS): ../../../../C/fast-lzma2/$(*B).c
	$(COMPL_O2) -DNO_XXHASH
!ENDIF


!ELSE

{.}.cpp{$O}.obj::
	$(COMPLB)
{../../../Common}.cpp{$O}.obj::
	$(COMPLB)
{../../../Windows}.cpp{$O}.obj::
	$(COMPLB)
{../../../Windows/Control}.cpp{$O}.obj::
	$(COMPLB)
{../../Common}.cpp{$O}.obj::
	$(COMPLB)

{../../UI/Common}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/Agent}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/Console}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/Explorer}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/FileManager}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/GUI}.cpp{$O}.obj::
	$(COMPLB)


{../../Archive}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Common}.cpp{$O}.obj::
	$(COMPLB)

{../../Archive/7z}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Cab}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Chm}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Com}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Iso}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Nsis}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Rar}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Tar}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Udf}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Wim}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Zip}.cpp{$O}.obj::
	$(COMPLB)

{../../Compress}.cpp{$O}.obj::
	$(COMPLB_O2)
{../../Crypto}.cpp{$O}.obj::
	$(COMPLB_O2)
{../../../../C}.c{$O}.obj::
	$(COMPLB_O2)
# stonebig{../../../../C/brotli}.c{$O}.obj::
# stonebig	$(COMPLB_O2)
{../../../../C/hashes}.c{$O}.obj::
	$(COMPLB_O2)
# stonebig{../../../../C/lizard}.c{$O}.obj::
# stonebig	$(COMPLB_O2)
{../../../../C/lz4}.c{$O}.obj::
	$(COMPLB_O2)
# stonebig{../../../../C/lz5}.c{$O}.obj::
# stonebig	$(COMPLB_O2)
{../../../../C/zstd}.c{$O}.obj::
	$(COMPLB_O2)
{../../../../C/zstdmt}.c{$O}.obj::
	$(COMPLB_O2) \
# stonebig	-I ../../../../C/brotli \
	-I ../../../../C/hashes \
# stonebig	-I ../../../../C/lizard \
	-I ../../../../C/lz4 \
# stonebig	-I ../../../../C/lz5 \
	-I ../../../../C/zstd
{../../../../C/fast-lzma2}.c{$O}.obj::
	$(COMPLB_O2) -DNO_XXHASH

!ENDIF

!include "Asm.mak"
