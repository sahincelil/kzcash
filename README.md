KZCash Core staging tree 0.1.8
===============================

https://www.kz.cash


What is KZCash?
----------------

KZCash is an experimental new digital currency that enables anonymous, instant
payments to anyone, anywhere in the world. KZCash uses peer-to-peer technology
to operate with no central authority: managing transactions and issuing money
are carried out collectively by the network. KZCash Core is the name of the open
source software which enables the use of this currency.

For more information, as well as an immediately useable, binary version of
the KZCash Core software, see http://kz.cash/.

Quick Build Script
------------------
For a simple way to build KZCash Core on Debian or Ubuntu systems, run the
`auto_build.sh` script located in the project root. This script installs common
build dependencies (adding the `bitcoin/bitcoin` PPA automatically if
Berkeley DB 4.8 packages are missing) and compiles the project:

```bash
./auto_build.sh
```

The script may require sudo access to install packages. After running it,
the compiled binaries can be found in the `src` directory.
