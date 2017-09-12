use ExtUtils::MakeMaker;
WriteMakefile(
	NAME		=> '_etf',
	VERSION_FROM	=> 'lib/_etf.pm',
	LICENSE		=> 'mit',
	ABSTRACT_FROM		=> 'lib/_etf.pm',
	AUTHOR			=> 'Mathieu Kerjouan',
	MIN_PERL_VERSION	=> 5.010,
	SRC => ['src'],
	INC => "-Isrc",
	BIN_SHARE => {
		INCLUDE => {"src" => "/"},
	},
	CCFLAGS => "-Wall -Wextra",
	XS => {},
	PREREQ_PM		=> {
		CGI		=> 0,
		JSON		=> 0,
		Want		=> 0,
		Time::HiRes	=> 0,
		Digest::SHA	=> 0,
		Scalar::Util	=> 0,
	},
);

