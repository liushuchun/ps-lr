

set(command "/Applications/CLion.app/Contents/bin/cmake/bin/cmake;-P;/Users/macbook/CLionProjects/ps-lr/cmake-build-debug/external/ZMQ-prefix/tmp/ZMQ-gitclone.cmake")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/macbook/CLionProjects/ps-lr/cmake-build-debug/external/ZMQ-prefix/src/ZMQ-stamp/ZMQ-download-out.log"
  ERROR_FILE "/Users/macbook/CLionProjects/ps-lr/cmake-build-debug/external/ZMQ-prefix/src/ZMQ-stamp/ZMQ-download-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/macbook/CLionProjects/ps-lr/cmake-build-debug/external/ZMQ-prefix/src/ZMQ-stamp/ZMQ-download-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "ZMQ download command succeeded.  See also /Users/macbook/CLionProjects/ps-lr/cmake-build-debug/external/ZMQ-prefix/src/ZMQ-stamp/ZMQ-download-*.log")
  message(STATUS "${msg}")
endif()
