// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2005-2009 - INRIA - Serge STEER <serge.steer@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 6726 -->
//
// <-- CLI SHELL MODE -->
// <-- NOT FIXED --> 6.0.0
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=6726
//
// <-- Short Description -->
//Variables whose name starts by a $  cannot be retreived in libraries

warning("off");

//create a library of variables
Dir = TMPDIR + "/bug_6726/";
mkdir(Dir);

function y=$a(x)
    y=x+1
endfunction
function y=z(x)
    y=x+1
endfunction

save(Dir + "$a.bin", $a);
save(Dir + "z.bin", z);
mputl(["z" "$a"], Dir + "names");
testlib=lib(Dir);

clear z  $a
if exists("z")==0 then pause,end
if exists("$a")==0 then pause,end

