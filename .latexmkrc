# latexmkrc

# If there are many tex files in the directory, define the main one
# Otherwise latexmk will try to compile all of them. For ex:
# $tex_file = "armonik_overview.tex";

# Define the theme and fonts directories using absolute paths
my $theme_dir = "Template/aneotheme";
my $fonts_dir = "$theme_dir/fonts";

# Convert to absolute paths
use Cwd 'abs_path';
$theme_dir = abs_path($theme_dir);
$fonts_dir = abs_path($fonts_dir);

# Set the LuaLaTeX flags
my $lualatex_flags = "-shell-escape -interaction=nonstopmode -synctex=1";

# Set the default command to compile the document
$lualatex = "lualatex $lualatex_flags %O %S";
$latex = $lualatex;

# Set the default command to compile the document
$ENV{'OSFONTDIR'} = "$fonts_dir:$ENV{'OSFONTDIR'}";
$ENV{'TEXINPUTS'} = "$theme_dir:$theme_dir/images:$ENV{'TEXINPUTS'}";

$clean_ext = "bbl nav out snm log aux pdf fls fdb_latexmk synctex.gz";

# Set the default action
$latexmk = 'compile';
