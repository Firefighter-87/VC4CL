if(INCLUDE_COMPILER)
	if(NOT VC4C_HEADER_PATH)
		find_file(VC4C_HEADER_PATH_FOUND "VC4C.h" HINTS "${PROJECT_SOURCE_DIR}/lib/vc4c/include" "${PROJECT_SOURCE_DIR}/../VC4C/include" "/usr/local/include/vc4cc" "/usr/include/vc4cc")
		if(VC4C_HEADER_PATH_FOUND)
			set(VC4C_HEADER_PATH "${VC4C_HEADER_PATH_FOUND}")
		endif()
	endif()
	if(NOT VC4CC_LIBRARY)
		find_library(VC4CC_LIBRARY NAMES VC4CC libVC4CC HINTS "${PROJECT_SOURCE_DIR}/lib/vc4c/build" "${PROJECT_SOURCE_DIR}/lib/vc4c/build/src" "${PROJECT_SOURCE_DIR}/../VC4C/build" "${PROJECT_SOURCE_DIR}/../VC4C/build/src" "/usr/local/lib/" "/usr/lib")
	endif()
	if(VC4CC_LIBRARY)
		message(STATUS "VC4C library found: ${VC4CC_LIBRARY}")
	else()
		message(STATUS "No VC4C compiler library found!")
	endif()
	if(VC4C_HEADER_PATH)
		find_file(VC4C_TOOLS_HEADER_PATH "tools.h" HINTS "${PROJECT_SOURCE_DIR}/lib/vc4c/include" "${PROJECT_SOURCE_DIR}/../VC4C/include" "/usr/local/include/vc4cc" "/usr/include/vc4cc")
		message(STATUS "VC4C compiler header found at: ${VC4C_HEADER_PATH}")
	else()
		message(WARNING "No VC4C compiler header found!")
	endif()
endif()