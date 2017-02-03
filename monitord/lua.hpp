#ifndef LUA_HPP_
#define LUA_HPP_

#include "config.h"

#define LUA

#ifdef LUA
extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}
#endif 

#endif /*LUA_HPP_*/
