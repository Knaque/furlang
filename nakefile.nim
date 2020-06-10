import nake

task "debug", "Fast build for active development.":
  shell(nimExe, "c",
    "-o:fli-debug" &
      (if hostOS == "windows": ".exe" else: ""),
    "./src/main.nim")

task "release", "Full build for release-level performance.":
  shell(nimExe, "c", "-d:release",
    "-o:fli" &
      (if hostOS == "windows": ".exe" else: ""),
    "./src/main.nim")