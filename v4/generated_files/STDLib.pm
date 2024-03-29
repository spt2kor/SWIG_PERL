# This file was automatically generated by SWIG (http://www.swig.org).
# Version 4.0.1
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package STDLib;
use base qw(Exporter);
use base qw(DynaLoader);
package STDLibc;
bootstrap STDLib;
package STDLib;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package STDLib;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package STDLib;

*UpdateStr = *STDLibc::UpdateStr;
*PrintStr = *STDLibc::PrintStr;
*changePerlStr = *STDLibc::changePerlStr;
*changePerlStrPtr = *STDLibc::changePerlStrPtr;
*average = *STDLibc::average;
*half = *STDLibc::half;
*halve_in_place = *STDLibc::halve_in_place;

############# Class : STDLib::StrTest ##############

package STDLib::StrTest;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( STDLib );
%OWNER = ();
%ITERATORS = ();
*swig_m_perltxt_get = *STDLibc::StrTest_m_perltxt_get;
*swig_m_perltxt_set = *STDLibc::StrTest_m_perltxt_set;
*m_fileName = *STDLibc::StrTest_m_fileName;
sub new {
    my $pkg = shift;
    my $self = STDLibc::new_StrTest(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        STDLibc::delete_StrTest($self);
        delete $OWNER{$self};
    }
}

*UpdateStr = *STDLibc::StrTest_UpdateStr;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : STDLib::vectori ##############

package STDLib::vectori;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( STDLib );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = STDLibc::new_vectori(@_);
    bless $self, $pkg if defined($self);
}

*size = *STDLibc::vectori_size;
*empty = *STDLibc::vectori_empty;
*clear = *STDLibc::vectori_clear;
*push = *STDLibc::vectori_push;
*pop = *STDLibc::vectori_pop;
*get = *STDLibc::vectori_get;
*set = *STDLibc::vectori_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        STDLibc::delete_vectori($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : STDLib::vectord ##############

package STDLib::vectord;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( STDLib );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = STDLibc::new_vectord(@_);
    bless $self, $pkg if defined($self);
}

*size = *STDLibc::vectord_size;
*empty = *STDLibc::vectord_empty;
*clear = *STDLibc::vectord_clear;
*push = *STDLibc::vectord_push;
*pop = *STDLibc::vectord_pop;
*get = *STDLibc::vectord_get;
*set = *STDLibc::vectord_set;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        STDLibc::delete_vectord($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package STDLib;

*moduleName = *STDLibc::moduleName;
*fileName = *STDLibc::fileName;
*StrTest_m_fileName = *STDLibc::StrTest_m_fileName;
1;
