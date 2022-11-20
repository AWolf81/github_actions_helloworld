#!/usr/bin/env bash

# install our packaged extension. `npm run package` to update
# Later we can install a pre-built extension here
# code-server --install-extension /source/dist/test.vsix

# wait for code-server to finish
# wait "$!"

# Add executable attribute to changie (workaround) - not sure why it is needed but it is working.
# TODO: Check if the following linbe is really needed
#       Use git ls-files --stage executableFile
#       -> should list something like 755 if not run git update-index --chmod=+x executableFile
# chmod +x /home/coder/.local/share/code-server/extensions/awolf81.changelog-0.0.1/bin/changie_1.9.0_linux_amd64/changie

# prepare empty workspace
mkdir -p /home/coder/workspace

# cp /source/src/test/mock/workspace /home/coder/.

# Start server with no auth & some disables on localhost:8090
code-server --bind-addr 0.0.0.0:8080 --auth none --disable-update-check --disable-telemetry /home/coder/workspace
# code-server --bind-addr 0.0.0.0:8090 --auth none --disable-update-check --disable-telemetry /source

# Testwise (to keep the container running)
# or CMD tail -f /dev/null
tail -f /dev/null