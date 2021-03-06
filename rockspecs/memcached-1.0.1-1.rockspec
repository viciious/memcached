package = 'memcached'
version = '1.0.1-1'

source  = {
    url = 'git://github.com/tarantool/memcached.git';
    tag = '1.0.1';
}

description = {
    summary  = "Memcached protocol module for tarantool";
    detailed = [[
    Memcached protocol module for tarantool
    ]];
    homepage = 'https://github.com/tarantool/memcached.git';
    license  = 'BSD';
    maintainer = "Alexander TUrenko <alexander.turenko@tarantool.org>";
}

dependencies = {
    'lua >= 5.1';
}

build = {
    type = 'cmake';
    variables = {
        CMAKE_BUILD_TYPE="RelWithDebInfo";
        TARANTOOL_INSTALL_LIBDIR="$(LIBDIR)";
        TARANTOOL_INSTALL_LUADIR="$(LUADIR)";
    };
}
-- vim: syntax=lua ts=4 sts=4 sw=4 et
