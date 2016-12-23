//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

//
// <-- Non-regression test for bug 10391 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/10391
//
// <-- Short Description -->
// Error when completion occurs after global deletation.

global("xyz");
xyz=1;
clearglobal("xyz");
librarieslist();