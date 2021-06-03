# FFPMEG-SHRINK

An ffmpeg-docker wrapper for a script I found to shrink videos to a specified size.

The script requires a `workdir` folder to be mounted containing the input file. The output file is placed in the same directory.

## Docker

### Scripts

Build the container:

    docker build --tag ffmpeg-shrink .

Run the script:

    docker run -v /ABSOLUTE/PATH/TO/WORKDIR:/workdir --rm ffmpeg-shrink /workdir/INPUT_FILE FILESIZE_IN_MB

Where `/ABSOLUTE/PATH/TO/WORKDIR`, `INPUT_FILE` and `FILESIZE_IN_MB` need to be modified per your usage.

### Example

The following example mounts the existing workdir folder in the repo, and converts `input.mp4` to a <8MB file:

    docker run -v C:\ffmpeg-shrink\workdir:/workdir --rm ffmpeg-shrink /workdir/input.mp4 8

The output will be called `input_8MB.mp4` and will be in the same `workdir` folder as the input file.

## Sources

The script is off Daishi's answer in the following discussion:
https://stackoverflow.com/questions/21553353/what-is-the-difference-between-cmd-and-entrypoint-in-a-dockerfile

Direct link to answer:
https://stackoverflow.com/a/34245657