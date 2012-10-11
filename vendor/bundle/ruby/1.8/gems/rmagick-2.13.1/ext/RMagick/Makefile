
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/x86_64-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
exec_prefix = $(prefix)
prefix = $(DESTDIR)/usr
includedir = $(prefix)/include
sitearchdir = $(sitelibdir)/$(sitearch)
archdir = $(rubylibdir)/$(arch)
rubylibdir = $(libdir)/ruby/$(ruby_version)
mandir = $(prefix)/share/man
infodir = $(prefix)/share/info
localedir = $(datarootdir)/locale
oldincludedir = $(DESTDIR)/usr/include
datadir = $(datarootdir)
pdfdir = $(docdir)
vendorlibdir = $(vendordir)/$(ruby_version)
sysconfdir = $(DESTDIR)/etc
datarootdir = $(prefix)/share
localstatedir = $(DESTDIR)/var
sharedstatedir = $(prefix)/com
sbindir = $(exec_prefix)/sbin
sitedir = $(DESTDIR)/usr/local/lib/site_ruby
libdir = $(exec_prefix)/lib
bindir = $(exec_prefix)/bin
libexecdir = $(prefix)/lib/ruby1.8
psdir = $(docdir)
vendordir = $(libdir)/ruby/vendor_ruby
docdir = $(datarootdir)/doc/$(PACKAGE)
sitelibdir = $(sitedir)/$(ruby_version)
dvidir = $(docdir)
vendorarchdir = $(vendorlibdir)/$(sitearch)
htmldir = $(docdir)

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = extconf.h
CFLAGS   =  -fPIC  -I/usr/include/ImageMagick -fopenmp 
INCFLAGS = -I. -I. -I/usr/lib/ruby/1.8/x86_64-linux -I.
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\"  -I/usr/include/ImageMagick
CXXFLAGS = $(CFLAGS) 
ldflags  =  -L/usr/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -L/usr/lib/X11
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CC) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby1.8
RUBY_SO_NAME = ruby1.8
arch = x86_64-linux
sitearch = x86_64-linux
ruby_version = 1.8
ruby = /usr/bin/ruby1.8
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS =  -L/usr/lib -lMagickCore -llcms -ltiff -lfreetype -ljpeg -llqr-1 -lglib-2.0 -lfontconfig -lXext -lSM -lICE -lX11 -lXt -lbz2 -lz -lm -lgomp -lpthread -lltdl
LIBS = $(LIBRUBYARG_SHARED) -lMagickCore  -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = rmimage.c rmagick.c rminfo.c rmstruct.c rmenum.c rmdraw.c rmpixel.c rmfill.c rmutil.c rmilist.c rmmontage.c rmmain.c
OBJS = rmimage.o rmagick.o rminfo.o rmstruct.o rmenum.o rmdraw.o rmpixel.o rmfill.o rmutil.o rmilist.o rmmontage.o rmmain.o
TARGET = RMagick2
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /var/www/redmine/vendor/bundle/ruby/1.8/gems/rmagick-2.13.1/lib$(target_prefix)
RUBYARCHDIR = /var/www/redmine/vendor/bundle/ruby/1.8/gems/rmagick-2.13.1/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h Makefile rmagick.h $(RUBY_EXTCONF_H)
