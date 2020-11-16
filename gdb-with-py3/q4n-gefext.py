class OneGadget(GenericCommand):
    """Wrapper of onegadget"""
    _cmdline_ = "onegadget"
    _syntax_  = "{:s} [depth]".format(_cmdline_)

    @only_if_gdb_running
    def do_invoke(self, argv):
        if len(argv)!=0:
            level = int(argv[0])
        else:
            level=0
        infomaps=get_process_maps()
        libcname = None
        for section in infomaps:
            if 'libc' in section.realpath:
                libcname = section.realpath
        if libcname is None:
            err("Can't find libc in process maps")
            return
        print(libcname)
        subprocess.call("one_gadget -l "+str(level)+" "+libcname,shell=True)
        return

register_external_command(OneGadget())