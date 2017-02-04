#ifndef LUA_HPP_
#define LUA_HPP_

#include "config.h"

#define LUA

#ifdef LUA
extern "C" {
#include <lua5.2/lua.h>
#include <lua5.2/lauxlib.h>
#include <lua5.2/lualib.h>
}
#endif 

#endif /*LUA_HPP_*/
