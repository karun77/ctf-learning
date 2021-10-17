import random

const tempStdoutFileName = "stdout_temp.txt"

#[don't know what these two lines do (some of this is copied from some code i found online)]#
proc dup(oldfd: FileHandle): FileHandle {.importc, header: "unistd.h".}
proc dup2(oldfd: FileHandle, newfd: FileHandle): cint {.importc, header: "unistd.h".}

#[echo "before..."]#

let caught = open(tempStdoutFileName, fmWrite)
let oldStdoutHandle = dup(stdout.getFileHandle())
discard dup2(caught.getFileHandle(), stdout.getFileHandle())

#[body]#

randomize()

var mines = rand(uint64)

echo mines

caught.flushFile()
discard dup2(oldStdoutHandle, stdout.getFileHandle())
caught.close()

#[echo "...after*]#

echo readFile(tempStdoutFileName)

