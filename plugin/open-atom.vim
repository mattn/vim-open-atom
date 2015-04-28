scriptencoding utf-8

function! s:open_atom(file)
  if get(g:, 'open_atom_silent_simojo_atom', 1)
    redraw!
    echo "Vimmerウルルン滞在記: Vim が... Atom に... 出合った..."
    echo ""
    echo "                     #    #                                                    "
    echo "###############      #    #                                                    "
    echo "      #             #    ######                        #                       "
    echo "      #             #    #   #      #    #####          #              #       "
    echo "      #            ## # # # #        ####    #          #               #      "
    echo "      #           # # #    #                #           #               #      "
    echo "      #  #       #  # #  ## ##          #  #            #               #      "
    echo "      #   #         # ###  #  ##         ##             ###            #       "
    echo "      #    #        # #    #             #              #  ##          #       "
    echo "      #     #       # # #######          #              #    #         #  #    "
    echo "      #     #       # #    #             #              #             #    #   "
    echo "      #             # #  # # #          #               #             #    ##  "
    echo "      #             # # #  #  #         #               #          # #  ###  # "
    echo "      #             #  #   #   #       #                #           ####     # "
    echo "      #             #    # #          #                 #                      "
    echo "      #             #     #                                                    "
  endif
  if has("win32") || has("win64")
    silent exec "!start cmd /c call atom " . (len(a:file) > 0 ? a:file : expand('%:p'))
  else
    silent exec "!atom " . expand('%') " &"
  endif
endfunction

command! -nargs=? -complete=file OpenAtom call s:open_atom(<q-args>)
