Name:           asbits
Version:        VERSION
Release:        1%{?dist}
Summary:        Display hexadecimal, decimal and octal in bits

License:        GPLv3+
URL:            https://benjamintoll.com
Source0:        https://github.com/btoll/asbits/releases/download/VERSION/asbits_VERSION.tar.gz

BuildRequires:  gcc
Requires:       make

%description
Display hexadecimal, decimal and octal in bits

%prep
%setup -q

%build
make %{?_smp_mflags}

%install
%make_install

%files
%license LICENSE
%{_bindir}/%{name}

%changelog
