RVM(1)                          [FIXME: manual]                         RVM(1)



NNAAMMEE
       rvm - The Ruby Version Manager

SSYYNNOOPPSSIISS
       rrvvmm [_F_L_A_G_S] [_O_P_T_I_O_N_S] _A_C_T_I_O_N [_I_M_P_L_E_M_E_N_T_A_T_I_O_N[,_I_M_P_L_E_M_E_N_T_A_T_I_O_N[,_._._.]]

DDEESSCCRRIIPPTTIIOONN
       RVM is a command line tool which allows us to easily install, manage
       and work with multiple ruby environments from interpreters to sets of
       gems.

FFLLAAGGSS
       ----hheeaadd
           with update, updates rvm to git head version.

       ----rruubbyyggeemmss
           with update, updates rubygems for selected ruby

       ----ddeeffaauulltt
           with ruby select, sets a default ruby for new shells.

       ----ddeebbuugg
           Toggle debug mode on for very verbose output.

       ----ttrraaccee
           Toggle trace mode on to see EVERYTHING rvm is doing.

       ----ffoorrccee
           Force install, removes old install & source before install.

       ----ssuummmmaarryy
           Used with rubydo to print out a summary of the commands run.

       ----llaatteesstt
           with gemset --dump skips version strings for latest gem.

       ----ggeemmss
           with uninstall/remove removes gems with the interpreter.

       ----ddooccss
           with install, attempt to generate ri after installation.

       ----rreeccoonnffiigguurree
           Force ./configure on install even if Makefile already exists.

OOPPTTIIOONNSS
       --vv,, ----vveerrssiioonn
           Emit rvm version loaded for current shell.

       --ll,, ----lleevveell
           patch level to use with rvm use / install

       ----bbiinn
           path for binaries to be placed (_~_/_._r_v_m_/_b_i_n_/)

       ----ssoouurrccee
           src directory to use (_~_/_._r_v_m_/_s_r_c_/)

       ----aarrcchhiivveess
           directory for downladed files (_~_/_._r_v_m_/_a_r_c_h_i_v_e_s_/)

       --SS
           Specify a script file to attempt to load and run (rubydo).

       --ee
           Execute code from the command line.

       --GG
           root gem path to use

       ----ggeemmss
           Used to set the _g_e_m_s___f_l_a_g, use with _r_e_m_o_v_e to remove gems.

       ----aarrcchhiivvee
           Used to set the _a_r_c_h_i_v_e___f_l_a_g, use with _r_e_m_o_v_e to remove archive.

       ----ppaattcchh, ----ppaattcchheess
           With any ruby build from source, allows you to specify patch paths
           and patch names to be applied prior to building. Values should be a
           relative / absolute path to a patch or the name of known patch /
           patchset. Optionally, paths or names may be followed by
           _%_s_o_m_e_i_n_t_e_g_e_r - e.g.  _-_-_p_a_t_c_h_e_s _m_y_p_a_t_c_h_%_2 - where the number
           following the % specifies the value of the -p argument to patch,
           defaulting to two.

       --CC,, ----ccoonnffiigguurree
           custom configure options. If you need to pass several configure
           options then append them comma separated: _-_C _-_-_._._._,_-_-_._._._,_-_-_._._..

       ----nniiccee
           process niceness (for slow computers, default 0)

       ----rreeee--ooppttiioonnss
           Options passed directly to ree's _._/_i_n_s_t_a_l_l_e_r on the command line.

AACCTTIIOONNSS
       uussaaggee
           Show this usage information.

       vveerrssiioonn
           Show the rvm version installed in rvm_path.

       uussee
           Setup current shell to use a specific ruby version.

       rreellooaadd
           Reload rvm source itself (useful after changing rvm source).

       ddoo
           Executes the command against either all or a listed subset of
           rubies. eg. rvm do gem --version ; rvm 1.8.7,1.9.2 do rake
           --version

       eennvv
           Displays information about an environment specified but the given
           ruby string. Useful for getting a sourceable path or an evaluatable
           set of shell variable declarations.

       iimmppllooddee
           (seppuku) removes the rvm installation completely. This means
           everything in $rvm_path (_~_/_._r_v_m). This does not touch your
           profiles. However, this means that you must manually clean up your
           profiles and remove the lines which source RVM.  _s_c_r_i_p_t_s_/_r_v_m.

       uuppddaattee
           Upgrades rvm to the latest version. (If you experience bugs try
           this first with --head).

       ggeett
           RVM get will 'get' the version you specify. This must be one of
           latest or head. With no arguments the rvm get help section will be
           shown..

       rreesseett
           Remove current and stored default & system settings. (If you
           experience odd behavior try this second).

       iinnffoo
           Show the ccuurrrreenntt environment information for current ruby.

       ddeebbuugg
           Show info plus additional information for common issues.

       iinnssttaallll
           Install one or many ruby versions.
           http://rvm.io/rubies/installing/

       uunniinnssttaallll
           Uninstall one or many ruby versions, leaves their sources.

       rreemmoovvee
           Uninstall one or many ruby versions and remove their sources.

       wwrraappppeerr
           Generates a set of wrapper executables for a given ruby with the
           specified ruby and gemset combination. Used under the hood for
           passenger support and the like.

       rruubbyy
           Runs a named ruby file against specified and/or all rubies.

       ggeemm
           Runs a gem command using selected ruby's _g_e_m.

       rraakkee
           Runs a rake task against specified and/or all rubies.

       tteessttss
           Runs _r_a_k_e _t_e_s_t across selected ruby versions.

       ssppeeccss
           Runs _r_a_k_e _s_p_e_c across selected ruby versions.

       mmoonniittoorr
           Monitor cwd for testing, run _r_a_k_e _{_s_p_e_c_,_t_e_s_t_} on changes.

       ggeemmsseett
           gemsets: http://rvm.io/gemsets/

       ggeemmddiirr
           Display the path to the current gem directory (_$_G_E_M___H_O_M_E).

       ssrrccddiirr
           Display the path to rvm source directory (may be yanked).

       ffeettcchh
           Performs an archive / src fetch only of the selected ruby.

       lliisstt
           Show currently installed rubies, interactive output.
           http://rvm.io/rubies/list/

       ppaacckkaaggee
           Install a dependency package {readline,iconv,zlib,openssl}.
           http://rvm.io/packages/

       rreeqquuiirreemmeennttss
           Show additional OS specific dependencies/requirements for building
           various rubies.

       nnootteess
           Display notes. Operating system specifics are now under
           'requirements'.

IIMMPPLLEEMMEENNTTAATTIIOONN
       rruubbyy
           MRI/YARV Ruby (The Gold Standard) {1.8.6,1.8.7,1.9.1,1.9.2...}

       jjrruubbyy
           JRuby, Ruby interpreter on the Java Virtual Machine.

       rrbbxx
           Rubinius

       rreeee
           Ruby Enterprise Edition, MRI Ruby with several custom patches for
           performance, stability, and memory.

       mmaaccrruubbyy
           MacRuby, insanely fast, can make real apps (Mac OS X Only).

       mmaagglleevv
           GemStone Ruby, awesome persistent ruby object store.

       iirroonnrruubbyy
           IronRuby, NOT supported yet. Looking for volunteers to help.

       ssyysstteemm
           Use the system ruby (eg. pre-rvm state).

       ddeeffaauulltt
           Use the default ruby (or the system ruby if a default hasn't been
           set).  http://rvm.io/rubies/default/

RREESSOOUURRCCEESS
       Main web site

       Online issue-tracker

CCOOPPYYIINNGG
       Copyright (c) 2009 Wayne E. Seguin

       See LICENSE file for details.



[FIXME: source]                   07/16/2010                            RVM(1)
