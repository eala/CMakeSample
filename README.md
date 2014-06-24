CMakeSample
===========

Basic CMake sample including build a static library, build another static library depends on previous one, and an application depends on library

* 主要架構
	1. 3rdparty
	2. lib
	3. app
* 主要應用
	1. 3rdparty 為第三方函式庫, 可以是下載下來的 open source等等
	2. lib 主要為自己想提供給他人的函式庫, 依賴 (depends) 於 3rdparty
	3. app 為主要應用程式, 可由 3rdparty直接建立, 或純粹依賴於 lib 

