////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_quick_test_vhdl_behavior_H
#define H_Work_quick_test_vhdl_behavior_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_quick_test_vhdl_behavior: public HSim__s6 {
public:


  char *t6;
  char *t7;
  char *t8;
  char *t9;
  char *t10;
    HSim__s1 SA[10];
    Work_quick_test_vhdl_behavior(const char * name);
    ~Work_quick_test_vhdl_behavior();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_quick_test_vhdl_behavior(const char *name);

#endif
