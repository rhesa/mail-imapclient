#
# This parser was generated with
# Parse::RecDescent version 1.967015
#

package Mail::IMAPClient::BodyStructure::Parse;
use Parse::RecDescent;
{ my $ERRORS;


package Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse;
use strict;
use vars qw($skip $AUTOLOAD  );
@Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::ISA = ();
$skip = '\\s*';


    my $mibs  = "Mail::IMAPClient::BodyStructure";
    my $subpartCount = 0;
    my $partCount    = 0;

    sub take_optional_items($$@)
    {   my ($r, $items) = (shift, shift);
        foreach (@_)
        {   my $opt = $_ .'(?)';
            exists $items->{$opt} or next;
            $r->{$_} = UNIVERSAL::isa($items->{$opt}, 'ARRAY')
                     ? $items->{$opt}[0] : $items->{$opt};
        }
    }

    sub merge_hash($$)
    {   my $to   = shift;
        my $from = shift or return;
	while( my($k,$v) = each %$from) { $to->{$k} = $v }
    }
;


{
local $SIG{__WARN__} = sub {0};
# PRETEND TO BE IN Parse::RecDescent NAMESPACE
*Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::AUTOLOAD   = sub
{
    no strict 'refs';

    ${"AUTOLOAD"} =~ s/^Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse/Parse::RecDescent/;
    goto &{${"AUTOLOAD"}};
}
}

push @Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::ISA, 'Parse::RecDescent';
# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::ADDRESSES
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"ADDRESSES"};

    Parse::RecDescent::_trace(q{Trying rule: [ADDRESSES]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{ADDRESSES},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or RFCNONCOMPLY, or '('});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{ADDRESSES});
        %item = (__RULE__ => q{ADDRESSES});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{ADDRESSES},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{ADDRESSES},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [RFCNONCOMPLY]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{ADDRESSES});
        %item = (__RULE__ => q{ADDRESSES});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [RFCNONCOMPLY]},
                  Parse::RecDescent::_tracefirst($text),
                  q{ADDRESSES},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::RFCNONCOMPLY($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [RFCNONCOMPLY]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{ADDRESSES},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [RFCNONCOMPLY]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{RFCNONCOMPLY}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [RFCNONCOMPLY]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['(' addressstruct ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{ADDRESSES});
        %item = (__RULE__ => q{ADDRESSES});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "("; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [addressstruct]},
                  Parse::RecDescent::_tracefirst($text),
                  q{ADDRESSES},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{addressstruct})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::addressstruct, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [addressstruct]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{ADDRESSES},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [addressstruct]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{addressstruct(s)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = ")"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item{'addressstruct(s)'} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['(' addressstruct ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{ADDRESSES},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{ADDRESSES},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{ADDRESSES},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{ADDRESSES},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::BARESTRING
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"BARESTRING"};

    Parse::RecDescent::_trace(q{Trying rule: [BARESTRING]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{BARESTRING},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^[)('"]/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^[)('"]/ /^(?!\\(|\\))(?:\\\\ |\\S)+/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{BARESTRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{BARESTRING});
        %item = (__RULE__ => q{BARESTRING});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^[)('"]/]}, Parse::RecDescent::_tracefirst($text),
                      q{BARESTRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        $_savetext = $text;

        if ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^[)('"])/)
        {
            $text = $_savetext;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        $text = $_savetext;

        Parse::RecDescent::_trace(q{Trying terminal: [/^(?!\\(|\\))(?:\\\\ |\\S)+/]}, Parse::RecDescent::_tracefirst($text),
                      q{BARESTRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/^(?!\\(|\\))(?:\\\\ |\\S)+/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^(?!\(|\))(?:\\ |\S)+)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{BARESTRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item{__PATTERN1__} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^[)('"]/ /^(?!\\(|\\))(?:\\\\ |\\S)+/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{BARESTRING},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{BARESTRING},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{BARESTRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{BARESTRING},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{BARESTRING},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::DOUBLE_QUOTED_STRING
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"DOUBLE_QUOTED_STRING"};

    Parse::RecDescent::_trace(q{Trying rule: [DOUBLE_QUOTED_STRING]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{DOUBLE_QUOTED_STRING},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'"'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['"' /(?:\\\\["\\\\]|[^"])*/ '"']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{DOUBLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{DOUBLE_QUOTED_STRING});
        %item = (__RULE__ => q{DOUBLE_QUOTED_STRING});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['"']},
                      Parse::RecDescent::_tracefirst($text),
                      q{DOUBLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\"/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/(?:\\\\["\\\\]|[^"])*/]}, Parse::RecDescent::_tracefirst($text),
                      q{DOUBLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/(?:\\\\["\\\\]|[^"])*/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(?:\\["\\]|[^"])*)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: ['"']},
                      Parse::RecDescent::_tracefirst($text),
                      q{DOUBLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{'"'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\"/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{DOUBLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item{__PATTERN1__} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['"' /(?:\\\\["\\\\]|[^"])*/ '"']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{DOUBLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{DOUBLE_QUOTED_STRING},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{DOUBLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{DOUBLE_QUOTED_STRING},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{DOUBLE_QUOTED_STRING},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::HTML
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"HTML"};

    Parse::RecDescent::_trace(q{Trying rule: [HTML]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{HTML},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/"HTML"|HTML/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/"HTML"|HTML/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{HTML},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{HTML});
        %item = (__RULE__ => q{HTML});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/"HTML"|HTML/i]}, Parse::RecDescent::_tracefirst($text),
                      q{HTML},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:"HTML"|HTML)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{HTML},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = "HTML"   };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/"HTML"|HTML/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{HTML},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{HTML},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{HTML},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{HTML},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{HTML},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::KVPAIRS
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"KVPAIRS"};

    Parse::RecDescent::_trace(q{Trying rule: [KVPAIRS]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{KVPAIRS},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'('});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['(' kvpair ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{KVPAIRS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{KVPAIRS});
        %item = (__RULE__ => q{KVPAIRS});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{KVPAIRS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "("; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [kvpair]},
                  Parse::RecDescent::_tracefirst($text),
                  q{KVPAIRS},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{kvpair})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::kvpair, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [kvpair]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{KVPAIRS},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [kvpair]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{KVPAIRS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{kvpair(s)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{KVPAIRS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = ")"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{KVPAIRS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = { map { (%$_) } @{$item{'kvpair(s)'}} } };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['(' kvpair ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{KVPAIRS},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{KVPAIRS},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{KVPAIRS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{KVPAIRS},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{KVPAIRS},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::MESSAGE
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"MESSAGE"};

    Parse::RecDescent::_trace(q{Trying rule: [MESSAGE]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{MESSAGE},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^"MESSAGE"|^MESSAGE/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^"MESSAGE"|^MESSAGE/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{MESSAGE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{MESSAGE});
        %item = (__RULE__ => q{MESSAGE});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^"MESSAGE"|^MESSAGE/i]}, Parse::RecDescent::_tracefirst($text),
                      q{MESSAGE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^"MESSAGE"|^MESSAGE)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{MESSAGE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = "MESSAGE"};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^"MESSAGE"|^MESSAGE/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{MESSAGE},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{MESSAGE},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{MESSAGE},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{MESSAGE},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{MESSAGE},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"NIL"};

    Parse::RecDescent::_trace(q{Trying rule: [NIL]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{NIL},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^NIL/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^NIL/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{NIL},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{NIL});
        %item = (__RULE__ => q{NIL});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^NIL/i]}, Parse::RecDescent::_tracefirst($text),
                      q{NIL},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^NIL)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{NIL},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = "NIL"    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^NIL/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{NIL},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{NIL},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{NIL},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{NIL},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{NIL},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NUMBER
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"NUMBER"};

    Parse::RecDescent::_trace(q{Trying rule: [NUMBER]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{NUMBER},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^(\\d+)/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^(\\d+)/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{NUMBER},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{NUMBER});
        %item = (__RULE__ => q{NUMBER});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^(\\d+)/]}, Parse::RecDescent::_tracefirst($text),
                      q{NUMBER},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^(\d+))/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{NUMBER},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[1] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^(\\d+)/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{NUMBER},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{NUMBER},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{NUMBER},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{NUMBER},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{NUMBER},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::PLAIN
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"PLAIN"};

    Parse::RecDescent::_trace(q{Trying rule: [PLAIN]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{PLAIN},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^"PLAIN"|^PLAIN/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^"PLAIN"|^PLAIN/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{PLAIN},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{PLAIN});
        %item = (__RULE__ => q{PLAIN});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^"PLAIN"|^PLAIN/i]}, Parse::RecDescent::_tracefirst($text),
                      q{PLAIN},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^"PLAIN"|^PLAIN)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{PLAIN},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = "PLAIN"  };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^"PLAIN"|^PLAIN/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{PLAIN},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{PLAIN},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{PLAIN},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{PLAIN},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{PLAIN},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::RFC822
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"RFC822"};

    Parse::RecDescent::_trace(q{Trying rule: [RFC822]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{RFC822},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^"RFC822"|^RFC822/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^"RFC822"|^RFC822/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{RFC822},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{RFC822});
        %item = (__RULE__ => q{RFC822});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^"RFC822"|^RFC822/i]}, Parse::RecDescent::_tracefirst($text),
                      q{RFC822},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^"RFC822"|^RFC822)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{RFC822},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = "RFC822" };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^"RFC822"|^RFC822/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{RFC822},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{RFC822},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{RFC822},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{RFC822},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{RFC822},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::RFCNONCOMPLY
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"RFCNONCOMPLY"};

    Parse::RecDescent::_trace(q{Trying rule: [RFCNONCOMPLY]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{RFCNONCOMPLY},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^\\(\\)/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^\\(\\)/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{RFCNONCOMPLY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{RFCNONCOMPLY});
        %item = (__RULE__ => q{RFCNONCOMPLY});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^\\(\\)/i]}, Parse::RecDescent::_tracefirst($text),
                      q{RFCNONCOMPLY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^\(\))/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{RFCNONCOMPLY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = "NIL"    };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^\\(\\)/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{RFCNONCOMPLY},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{RFCNONCOMPLY},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{RFCNONCOMPLY},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{RFCNONCOMPLY},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{RFCNONCOMPLY},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::SINGLE_QUOTED_STRING
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"SINGLE_QUOTED_STRING"};

    Parse::RecDescent::_trace(q{Trying rule: [SINGLE_QUOTED_STRING]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{SINGLE_QUOTED_STRING},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'''});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [''' /(?:\\\\['\\\\]|[^'])*/ ''']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{SINGLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{SINGLE_QUOTED_STRING});
        %item = (__RULE__ => q{SINGLE_QUOTED_STRING});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [''']},
                      Parse::RecDescent::_tracefirst($text),
                      q{SINGLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "'"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/(?:\\\\['\\\\]|[^'])*/]}, Parse::RecDescent::_tracefirst($text),
                      q{SINGLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/(?:\\\\['\\\\]|[^'])*/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:(?:\\['\\]|[^'])*)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [''']},
                      Parse::RecDescent::_tracefirst($text),
                      q{SINGLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{'''})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "'"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{SINGLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item{__PATTERN1__} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [''' /(?:\\\\['\\\\]|[^'])*/ ''']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{SINGLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{SINGLE_QUOTED_STRING},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{SINGLE_QUOTED_STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{SINGLE_QUOTED_STRING},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{SINGLE_QUOTED_STRING},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"STRING"};

    Parse::RecDescent::_trace(q{Trying rule: [STRING]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{STRING},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{DOUBLE_QUOTED_STRING, or SINGLE_QUOTED_STRING, or BARESTRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [DOUBLE_QUOTED_STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{STRING});
        %item = (__RULE__ => q{STRING});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [DOUBLE_QUOTED_STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{STRING},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::DOUBLE_QUOTED_STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [DOUBLE_QUOTED_STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{STRING},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [DOUBLE_QUOTED_STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{DOUBLE_QUOTED_STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [DOUBLE_QUOTED_STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [SINGLE_QUOTED_STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{STRING});
        %item = (__RULE__ => q{STRING});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [SINGLE_QUOTED_STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{STRING},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::SINGLE_QUOTED_STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [SINGLE_QUOTED_STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{STRING},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [SINGLE_QUOTED_STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{SINGLE_QUOTED_STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [SINGLE_QUOTED_STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [BARESTRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{STRING});
        %item = (__RULE__ => q{STRING});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [BARESTRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{STRING},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::BARESTRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [BARESTRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{STRING},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [BARESTRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{BARESTRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [BARESTRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{STRING},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{STRING},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{STRING},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{STRING},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRINGS
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"STRINGS"};

    Parse::RecDescent::_trace(q{Trying rule: [STRINGS]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{STRINGS},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'('});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['(' STRING ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{STRINGS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{STRINGS});
        %item = (__RULE__ => q{STRINGS});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{STRINGS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "("; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{STRINGS},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{STRING})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{STRINGS},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [STRING]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{STRINGS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING(s)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{STRINGS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = ")"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{STRINGS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item{'STRING(s)'} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['(' STRING ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{STRINGS},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{STRINGS},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{STRINGS},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{STRINGS},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{STRINGS},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::TEXT
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"TEXT"};

    Parse::RecDescent::_trace(q{Trying rule: [TEXT]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{TEXT},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^"TEXT"|^TEXT/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^"TEXT"|^TEXT/i]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{TEXT},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{TEXT});
        %item = (__RULE__ => q{TEXT});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^"TEXT"|^TEXT/i]}, Parse::RecDescent::_tracefirst($text),
                      q{TEXT},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^"TEXT"|^TEXT)/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{TEXT},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = "TEXT"   };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^"TEXT"|^TEXT/i]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{TEXT},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{TEXT},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{TEXT},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{TEXT},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{TEXT},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::addressstruct
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"addressstruct"};

    Parse::RecDescent::_trace(q{Trying rule: [addressstruct]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{addressstruct},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'('});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['(' personalname sourceroute mailboxname hostname ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{addressstruct});
        %item = (__RULE__ => q{addressstruct});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "("; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [personalname]},
                  Parse::RecDescent::_tracefirst($text),
                  q{addressstruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{personalname})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::personalname($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [personalname]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{addressstruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [personalname]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{personalname}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [sourceroute]},
                  Parse::RecDescent::_tracefirst($text),
                  q{addressstruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{sourceroute})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::sourceroute($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [sourceroute]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{addressstruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [sourceroute]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{sourceroute}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [mailboxname]},
                  Parse::RecDescent::_tracefirst($text),
                  q{addressstruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{mailboxname})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::mailboxname($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [mailboxname]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{addressstruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [mailboxname]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{mailboxname}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [hostname]},
                  Parse::RecDescent::_tracefirst($text),
                  q{addressstruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{hostname})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::hostname($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [hostname]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{addressstruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [hostname]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{hostname}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = ")"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { bless { personalname => $item{personalname}
		, sourceroute  => $item{sourceroute}
		, mailboxname  => $item{mailboxname}
		, hostname     => $item{hostname}
	        }, 'Mail::IMAPClient::BodyStructure::Address';
	};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['(' personalname sourceroute mailboxname hostname ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{addressstruct},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{addressstruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{addressstruct},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{addressstruct},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::basicfields
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"basicfields"};

    Parse::RecDescent::_trace(q{Trying rule: [basicfields]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{basicfields},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{bodysubtype});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [bodysubtype bodyparms bodyid bodydesc bodyenc bodysize]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{basicfields});
        %item = (__RULE__ => q{basicfields});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [bodysubtype]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basicfields},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodysubtype($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [bodysubtype]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basicfields},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [bodysubtype]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodysubtype}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyparms]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basicfields},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyparms})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyparms, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyparms]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basicfields},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyparms]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyparms(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyid]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basicfields},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyid})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyid, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyid]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basicfields},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyid]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyid(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodydesc]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basicfields},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodydesc})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodydesc, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodydesc]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basicfields},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodydesc]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodydesc(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyenc]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basicfields},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyenc})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyenc, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyenc]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basicfields},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyenc]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyenc(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodysize]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basicfields},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodysize})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodysize, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodysize]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basicfields},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodysize]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodysize(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {  $return = { bodysubtype => $item{bodysubtype} };
	   take_optional_items($return, \%item,
	      qw/bodyparms bodyid bodydesc bodyenc bodysize/);
	   1;
	};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [bodysubtype bodyparms bodyid bodydesc bodyenc bodysize]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{basicfields},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{basicfields},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{basicfields},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{basicfields},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bcc
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bcc"};

    Parse::RecDescent::_trace(q{Trying rule: [bcc]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bcc},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{ADDRESSES});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [ADDRESSES]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bcc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bcc});
        %item = (__RULE__ => q{bcc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [ADDRESSES]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bcc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::ADDRESSES($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [ADDRESSES]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bcc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [ADDRESSES]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bcc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ADDRESSES}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [ADDRESSES]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bcc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bcc},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bcc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bcc},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bcc},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyMD5
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodyMD5"};

    Parse::RecDescent::_trace(q{Trying rule: [bodyMD5]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodyMD5},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyMD5},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyMD5});
        %item = (__RULE__ => q{bodyMD5});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyMD5},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyMD5},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyMD5},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyMD5},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyMD5},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyMD5});
        %item = (__RULE__ => q{bodyMD5});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyMD5},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyMD5},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyMD5},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyMD5},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodyMD5},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodyMD5},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodyMD5},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodyMD5},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodydesc
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodydesc"};

    Parse::RecDescent::_trace(q{Trying rule: [bodydesc]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodydesc},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/[()]/, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/[()]/ NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodydesc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodydesc});
        %item = (__RULE__ => q{bodydesc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/[()]/]}, Parse::RecDescent::_tracefirst($text),
                      q{bodydesc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        $_savetext = $text;

        if ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[()])/)
        {
            $text = $_savetext;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        $text = $_savetext;

        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodydesc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{NIL})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodydesc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodydesc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [/[()]/ NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodydesc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodydesc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodydesc});
        %item = (__RULE__ => q{bodydesc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodydesc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodydesc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodydesc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodydesc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodydesc},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodydesc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodydesc},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodydesc},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodydisp
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodydisp"};

    Parse::RecDescent::_trace(q{Trying rule: [bodydisp]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodydisp},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or KVPAIRS});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodydisp},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodydisp});
        %item = (__RULE__ => q{bodydisp});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodydisp},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodydisp},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodydisp},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodydisp},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [KVPAIRS]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodydisp},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodydisp});
        %item = (__RULE__ => q{bodydisp});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [KVPAIRS]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodydisp},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::KVPAIRS($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [KVPAIRS]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodydisp},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [KVPAIRS]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodydisp},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KVPAIRS}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [KVPAIRS]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodydisp},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodydisp},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodydisp},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodydisp},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodydisp},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyenc
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodyenc"};

    Parse::RecDescent::_trace(q{Trying rule: [bodyenc]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodyenc},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING, or KVPAIRS});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyenc});
        %item = (__RULE__ => q{bodyenc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyenc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyenc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyenc});
        %item = (__RULE__ => q{bodyenc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyenc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyenc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [KVPAIRS]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyenc});
        %item = (__RULE__ => q{bodyenc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [KVPAIRS]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyenc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::KVPAIRS($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [KVPAIRS]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyenc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [KVPAIRS]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KVPAIRS}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [KVPAIRS]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodyenc},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodyenc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodyenc},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodyenc},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyextensions
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodyextensions"};

    Parse::RecDescent::_trace(q{Trying rule: [bodyextensions]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodyextensions},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyextensions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyextensions});
        %item = (__RULE__ => q{bodyextensions});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyextensions},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyextensions},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextensions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextensions},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyextensions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyextensions});
        %item = (__RULE__ => q{bodyextensions});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyextensions},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyextensions},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextensions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextensions},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodyextensions},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodyextensions},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodyextensions},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodyextensions},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyextra
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodyextra"};

    Parse::RecDescent::_trace(q{Trying rule: [bodyextra]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodyextra},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING, or STRINGS});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyextra});
        %item = (__RULE__ => q{bodyextra});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyextra},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyextra},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyextra});
        %item = (__RULE__ => q{bodyextra});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyextra},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyextra},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRINGS]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyextra});
        %item = (__RULE__ => q{bodyextra});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRINGS]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyextra},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRINGS($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRINGS]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyextra},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRINGS]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRINGS}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRINGS]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodyextra},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodyextra},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodyextra},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodyextra},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyid
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodyid"};

    Parse::RecDescent::_trace(q{Trying rule: [bodyid]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodyid},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/[()]/, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/[()]/ NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyid});
        %item = (__RULE__ => q{bodyid});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/[()]/]}, Parse::RecDescent::_tracefirst($text),
                      q{bodyid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        $_savetext = $text;

        if ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[()])/)
        {
            $text = $_savetext;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        $text = $_savetext;

        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyid},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{NIL})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyid},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [/[()]/ NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyid},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyid});
        %item = (__RULE__ => q{bodyid});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyid},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyid},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyid},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodyid},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodyid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodyid},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodyid},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodylang
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodylang"};

    Parse::RecDescent::_trace(q{Trying rule: [bodylang]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodylang},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING, or STRINGS});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodylang});
        %item = (__RULE__ => q{bodylang});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodylang},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodylang},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodylang});
        %item = (__RULE__ => q{bodylang});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodylang},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodylang},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRINGS]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodylang});
        %item = (__RULE__ => q{bodylang});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRINGS]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodylang},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRINGS($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRINGS]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodylang},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRINGS]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRINGS}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRINGS]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodylang},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodylang},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodylang},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodylang},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyloc
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodyloc"};

    Parse::RecDescent::_trace(q{Trying rule: [bodyloc]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodyloc},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyloc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyloc});
        %item = (__RULE__ => q{bodyloc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyloc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyloc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyloc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyloc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyloc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyloc});
        %item = (__RULE__ => q{bodyloc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyloc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyloc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyloc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyloc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodyloc},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodyloc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodyloc},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodyloc},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyparms
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodyparms"};

    Parse::RecDescent::_trace(q{Trying rule: [bodyparms]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodyparms},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or KVPAIRS});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyparms},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyparms});
        %item = (__RULE__ => q{bodyparms});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyparms},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyparms},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyparms},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyparms},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [KVPAIRS]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodyparms},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodyparms});
        %item = (__RULE__ => q{bodyparms});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [KVPAIRS]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodyparms},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::KVPAIRS($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [KVPAIRS]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodyparms},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [KVPAIRS]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodyparms},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KVPAIRS}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [KVPAIRS]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodyparms},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodyparms},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodyparms},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodyparms},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodyparms},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodysize
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodysize"};

    Parse::RecDescent::_trace(q{Trying rule: [bodysize]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodysize},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/[()]/, or NUMBER});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/[()]/ NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodysize},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodysize});
        %item = (__RULE__ => q{bodysize});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/[()]/]}, Parse::RecDescent::_tracefirst($text),
                      q{bodysize},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        $_savetext = $text;

        if ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[()])/)
        {
            $text = $_savetext;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        $text = $_savetext;

        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodysize},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{NIL})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodysize},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodysize},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [/[()]/ NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodysize},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NUMBER]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodysize},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodysize});
        %item = (__RULE__ => q{bodysize});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NUMBER]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodysize},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NUMBER($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NUMBER]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodysize},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NUMBER]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodysize},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NUMBER}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NUMBER]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodysize},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodysize},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodysize},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodysize},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodysize},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodystructure
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodystructure"};

    Parse::RecDescent::_trace(q{Trying rule: [bodystructure]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodystructure},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'('});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['(' part ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodystructure},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodystructure});
        %item = (__RULE__ => q{bodystructure});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodystructure},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "("; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [part]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodystructure},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{part})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::part, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [part]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodystructure},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [part]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodystructure},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{part(s)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodystructure},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = ")"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodystructure},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item{'part(s)'} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['(' part ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodystructure},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodystructure},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodystructure},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodystructure},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodystructure},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodysubtype
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodysubtype"};

    Parse::RecDescent::_trace(q{Trying rule: [bodysubtype]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodysubtype},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{PLAIN, or HTML, or NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [PLAIN]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodysubtype});
        %item = (__RULE__ => q{bodysubtype});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [PLAIN]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodysubtype},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::PLAIN($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [PLAIN]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodysubtype},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [PLAIN]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{PLAIN}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [PLAIN]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [HTML]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodysubtype});
        %item = (__RULE__ => q{bodysubtype});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [HTML]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodysubtype},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::HTML($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [HTML]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodysubtype},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [HTML]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{HTML}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [HTML]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodysubtype});
        %item = (__RULE__ => q{bodysubtype});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodysubtype},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodysubtype},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodysubtype});
        %item = (__RULE__ => q{bodysubtype});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodysubtype},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodysubtype},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodysubtype},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodysubtype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodysubtype},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodysubtype},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodytype
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"bodytype"};

    Parse::RecDescent::_trace(q{Trying rule: [bodytype]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{bodytype},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{bodytype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{bodytype});
        %item = (__RULE__ => q{bodytype});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{bodytype},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{bodytype},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{bodytype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{bodytype},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{bodytype},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{bodytype},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{bodytype},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{bodytype},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::cc
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"cc"};

    Parse::RecDescent::_trace(q{Trying rule: [cc]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{cc},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{ADDRESSES});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [ADDRESSES]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{cc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{cc});
        %item = (__RULE__ => q{cc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [ADDRESSES]},
                  Parse::RecDescent::_tracefirst($text),
                  q{cc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::ADDRESSES($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [ADDRESSES]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{cc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [ADDRESSES]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{cc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ADDRESSES}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [ADDRESSES]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{cc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{cc},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{cc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{cc},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{cc},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::date
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"date"};

    Parse::RecDescent::_trace(q{Trying rule: [date]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{date},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{date},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{date});
        %item = (__RULE__ => q{date});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{date},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{date},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{date},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{date},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{date},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{date});
        %item = (__RULE__ => q{date});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{date},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{date},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{date},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{date},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{date},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{date},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{date},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{date},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::envelope
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"envelope"};

    Parse::RecDescent::_trace(q{Trying rule: [envelope]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{envelope},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/.*?\\(.*?ENVELOPE/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/.*?\\(.*?ENVELOPE/ envelopestruct /.*\\)/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{envelope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{envelope});
        %item = (__RULE__ => q{envelope});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/.*?\\(.*?ENVELOPE/]}, Parse::RecDescent::_tracefirst($text),
                      q{envelope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:.*?\(.*?ENVELOPE)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [envelopestruct]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelope},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{envelopestruct})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::envelopestruct($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [envelopestruct]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelope},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [envelopestruct]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{envelopestruct}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [/.*\\)/]}, Parse::RecDescent::_tracefirst($text),
                      q{envelope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/.*\\)/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:.*\))/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{envelope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item{envelopestruct} };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/.*?\\(.*?ENVELOPE/ envelopestruct /.*\\)/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{envelope},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{envelope},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{envelope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{envelope},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{envelope},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::envelopestruct
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"envelopestruct"};

    Parse::RecDescent::_trace(q{Trying rule: [envelopestruct]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'('});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['(' date subject from sender replyto to cc bcc inreplyto messageid ')']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{envelopestruct});
        %item = (__RULE__ => q{envelopestruct});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "("; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [date]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{date})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::date($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [date]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [date]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{date}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [subject]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{subject})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::subject($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [subject]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [subject]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{subject}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [from]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{from})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::from($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [from]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [from]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{from}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [sender]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{sender})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::sender($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [sender]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [sender]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{sender}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [replyto]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{replyto})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::replyto($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [replyto]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [replyto]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{replyto}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [to]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{to})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::to($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [to]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [to]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{to}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [cc]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{cc})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::cc($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [cc]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [cc]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{cc}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [bcc]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{bcc})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bcc($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [bcc]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [bcc]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bcc}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [inreplyto]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{inreplyto})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::inreplyto($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [inreplyto]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [inreplyto]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{inreplyto}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [messageid]},
                  Parse::RecDescent::_tracefirst($text),
                  q{envelopestruct},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{messageid})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::messageid($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [messageid]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{envelopestruct},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [messageid]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{messageid}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = ")"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = bless {}, "Mail::IMAPClient::BodyStructure::Envelope";
	  $return->{$_} = $item{$_}
	     for qw/date subject from sender replyto to cc/
	       , qw/bcc inreplyto messageid/;
	  1;
	};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['(' date subject from sender replyto to cc bcc inreplyto messageid ')']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{envelopestruct},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{envelopestruct},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{envelopestruct},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{envelopestruct},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::from
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"from"};

    Parse::RecDescent::_trace(q{Trying rule: [from]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{from},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{ADDRESSES});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [ADDRESSES]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{from},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{from});
        %item = (__RULE__ => q{from});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [ADDRESSES]},
                  Parse::RecDescent::_tracefirst($text),
                  q{from},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::ADDRESSES($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [ADDRESSES]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{from},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [ADDRESSES]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{from},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ADDRESSES}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [ADDRESSES]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{from},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{from},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{from},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{from},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{from},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::hostname
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"hostname"};

    Parse::RecDescent::_trace(q{Trying rule: [hostname]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{hostname},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{hostname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{hostname});
        %item = (__RULE__ => q{hostname});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{hostname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{hostname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{hostname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{hostname},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{hostname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{hostname});
        %item = (__RULE__ => q{hostname});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{hostname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{hostname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{hostname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{hostname},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{hostname},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{hostname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{hostname},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{hostname},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::inreplyto
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"inreplyto"};

    Parse::RecDescent::_trace(q{Trying rule: [inreplyto]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{inreplyto},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{inreplyto},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{inreplyto});
        %item = (__RULE__ => q{inreplyto});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{inreplyto},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{inreplyto},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{inreplyto},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{inreplyto},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{inreplyto},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{inreplyto});
        %item = (__RULE__ => q{inreplyto});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{inreplyto},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{inreplyto},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{inreplyto},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{inreplyto},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{inreplyto},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{inreplyto},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{inreplyto},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{inreplyto},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::key
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"key"};

    Parse::RecDescent::_trace(q{Trying rule: [key]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{key},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{key});
        %item = (__RULE__ => q{key});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{key},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{key},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{key},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{key},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{key},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{key},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{key},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::kvpair
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"kvpair"};

    Parse::RecDescent::_trace(q{Trying rule: [kvpair]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{kvpair},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{')'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [')' key value]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{kvpair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{kvpair});
        %item = (__RULE__ => q{kvpair});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{kvpair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        $_savetext = $text;

        if ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = ")"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $_savetext;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        $text = $_savetext;

        Parse::RecDescent::_trace(q{Trying subrule: [key]},
                  Parse::RecDescent::_tracefirst($text),
                  q{kvpair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{key})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::key($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [key]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{kvpair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [key]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{kvpair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{key}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [value]},
                  Parse::RecDescent::_tracefirst($text),
                  q{kvpair},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{value})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::value($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [value]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{kvpair},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [value]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{kvpair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{value}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{kvpair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = { $item{key} => $item{value} } };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [')' key value]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{kvpair},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{kvpair},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{kvpair},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{kvpair},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{kvpair},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::mailboxname
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"mailboxname"};

    Parse::RecDescent::_trace(q{Trying rule: [mailboxname]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{mailboxname},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{mailboxname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{mailboxname});
        %item = (__RULE__ => q{mailboxname});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{mailboxname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{mailboxname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{mailboxname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{mailboxname},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{mailboxname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{mailboxname});
        %item = (__RULE__ => q{mailboxname});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{mailboxname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{mailboxname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{mailboxname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{mailboxname},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{mailboxname},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{mailboxname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{mailboxname},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{mailboxname},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::messageid
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"messageid"};

    Parse::RecDescent::_trace(q{Trying rule: [messageid]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{messageid},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{messageid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{messageid});
        %item = (__RULE__ => q{messageid});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{messageid},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{messageid},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{messageid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{messageid},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{messageid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{messageid});
        %item = (__RULE__ => q{messageid});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{messageid},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{messageid},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{messageid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{messageid},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{messageid},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{messageid},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{messageid},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{messageid},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::multipart
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"multipart"};

    Parse::RecDescent::_trace(q{Trying rule: [multipart]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{multipart},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{subpart});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [subpart <commit> bodysubtype bodyparms bodydisp bodylang bodyloc bodyextra bodyextensions <defer:{  $subpartCount = 0 }>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{multipart});
        %item = (__RULE__ => q{multipart});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying repeated subrule: [subpart]},
                  Parse::RecDescent::_tracefirst($text),
                  q{multipart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::subpart, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [subpart]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{multipart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [subpart]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{subpart(s)}} = $_tok;
        push @item, $_tok;
        


        

        Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { $commit = 1 };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [bodysubtype]},
                  Parse::RecDescent::_tracefirst($text),
                  q{multipart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{bodysubtype})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodysubtype($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [bodysubtype]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{multipart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [bodysubtype]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodysubtype}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyparms]},
                  Parse::RecDescent::_tracefirst($text),
                  q{multipart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyparms})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyparms, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyparms]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{multipart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyparms]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyparms(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodydisp]},
                  Parse::RecDescent::_tracefirst($text),
                  q{multipart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodydisp})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodydisp, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodydisp]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{multipart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodydisp]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodydisp(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodylang]},
                  Parse::RecDescent::_tracefirst($text),
                  q{multipart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodylang})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodylang, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodylang]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{multipart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodylang]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodylang(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyloc]},
                  Parse::RecDescent::_tracefirst($text),
                  q{multipart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyloc})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyloc, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyloc]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{multipart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyloc]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyloc(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyextra]},
                  Parse::RecDescent::_tracefirst($text),
                  q{multipart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyextra})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyextra, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyextra]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{multipart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyextra]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyextra(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyextensions]},
                  Parse::RecDescent::_tracefirst($text),
                  q{multipart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyextensions})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyextensions, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyextensions]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{multipart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyextensions]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyextensions(s?)}} = $_tok;
        push @item, $_tok;
        


        

        Parse::RecDescent::_trace(q{Trying directive: [<defer:{  $subpartCount = 0 }>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { push @{$thisparser->{deferred}}, sub {  $subpartCount = 0 }; };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return =
	    { bodysubtype   => $item{bodysubtype}
	    , bodytype      => 'MULTIPART'
	    , bodystructure => $item{'subpart(s)'}
	    };
	  take_optional_items($return, \%item
              , qw/bodyparms bodydisp bodylang bodyloc bodyextra/);
	  1;
	};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [subpart <commit> bodysubtype bodyparms bodydisp bodylang bodyloc bodyextra bodyextensions <defer:{  $subpartCount = 0 }>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{multipart},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{multipart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{multipart},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{multipart},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::nestedmessage
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"nestedmessage"};

    Parse::RecDescent::_trace(q{Trying rule: [nestedmessage]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{rfc822message});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [rfc822message <commit> bodyparms bodyid bodydesc bodyenc bodysize envelopestruct bodystructure textlines bodyMD5 bodydisp bodylang bodyextra]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{nestedmessage});
        %item = (__RULE__ => q{nestedmessage});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [rfc822message]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::rfc822message($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [rfc822message]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [rfc822message]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{rfc822message}} = $_tok;
        push @item, $_tok;
        
        }

        

        Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { $commit = 1 };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [bodyparms]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{bodyparms})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyparms($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [bodyparms]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [bodyparms]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyparms}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [bodyid]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{bodyid})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyid($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [bodyid]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [bodyid]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyid}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [bodydesc]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{bodydesc})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodydesc($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [bodydesc]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [bodydesc]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodydesc}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [bodyenc]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{bodyenc})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyenc($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [bodyenc]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [bodyenc]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyenc}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [bodysize]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{bodysize})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodysize($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [bodysize]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [bodysize]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodysize}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [envelopestruct]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{envelopestruct})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::envelopestruct, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [envelopestruct]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [envelopestruct]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{envelopestruct(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodystructure]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodystructure})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodystructure, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodystructure]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodystructure]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodystructure(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [textlines]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{textlines})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::textlines, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [textlines]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [textlines]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{textlines(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyMD5]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyMD5})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyMD5, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyMD5]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyMD5]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyMD5(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodydisp]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodydisp})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodydisp, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodydisp]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodydisp]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodydisp(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodylang]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodylang})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodylang, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodylang]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodylang]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodylang(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyextra]},
                  Parse::RecDescent::_tracefirst($text),
                  q{nestedmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyextra})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyextra, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyextra]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{nestedmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyextra]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyextra(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
	  $return = {};
	  $return->{$_} = $item{$_}
	      for qw/bodyparms bodyid bodydesc bodyenc bodysize/;
#             envelopestruct bodystructure textlines/;

	  take_optional_items($return, \%item
            , qw/envelopestruct bodystructure textlines/
	    , qw/bodyMD5 bodydisp bodylang bodyextra/);

	  merge_hash($return, $item{bodystructure}[0]);
	  merge_hash($return, $item{basicfields});
	  $return->{bodytype}    = "MESSAGE" ;
	  $return->{bodysubtype} = "RFC822" ;
	  1;
	};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [rfc822message <commit> bodyparms bodyid bodydesc bodyenc bodysize envelopestruct bodystructure textlines bodyMD5 bodydisp bodylang bodyextra]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{nestedmessage},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{nestedmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{nestedmessage},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{nestedmessage},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::othertypemessage
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"othertypemessage"};

    Parse::RecDescent::_trace(q{Trying rule: [othertypemessage]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{othertypemessage},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{bodytype});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [bodytype basicfields bodyMD5 bodydisp bodylang bodyextra bodyextensions]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{othertypemessage});
        %item = (__RULE__ => q{othertypemessage});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [bodytype]},
                  Parse::RecDescent::_tracefirst($text),
                  q{othertypemessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodytype($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [bodytype]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{othertypemessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [bodytype]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodytype}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [basicfields]},
                  Parse::RecDescent::_tracefirst($text),
                  q{othertypemessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{basicfields})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::basicfields($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [basicfields]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{othertypemessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [basicfields]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{basicfields}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyMD5]},
                  Parse::RecDescent::_tracefirst($text),
                  q{othertypemessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyMD5})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyMD5, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyMD5]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{othertypemessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyMD5]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyMD5(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodydisp]},
                  Parse::RecDescent::_tracefirst($text),
                  q{othertypemessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodydisp})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodydisp, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodydisp]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{othertypemessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodydisp]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodydisp(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodylang]},
                  Parse::RecDescent::_tracefirst($text),
                  q{othertypemessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodylang})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodylang, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodylang]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{othertypemessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodylang]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodylang(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyextra]},
                  Parse::RecDescent::_tracefirst($text),
                  q{othertypemessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyextra})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyextra, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyextra]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{othertypemessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyextra]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyextra(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyextensions]},
                  Parse::RecDescent::_tracefirst($text),
                  q{othertypemessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyextensions})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyextensions, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyextensions]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{othertypemessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyextensions]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyextensions(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = { bodytype => $item{bodytype} };
	  take_optional_items($return, \%item
             , qw/bodyMD5 bodydisp bodylang bodyextra/ );
	  merge_hash($return, $item{basicfields});
	  1;
	};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [bodytype basicfields bodyMD5 bodydisp bodylang bodyextra bodyextensions]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{othertypemessage},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{othertypemessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{othertypemessage},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{othertypemessage},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::part
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"part"};

    Parse::RecDescent::_trace(q{Trying rule: [part]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{part},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{multipart, or textmessage, or nestedmessage, or othertypemessage});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [multipart]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{part});
        %item = (__RULE__ => q{part});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [multipart]},
                  Parse::RecDescent::_tracefirst($text),
                  q{part},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::multipart($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [multipart]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{part},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [multipart]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{multipart}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = bless $item{multipart}, $mibs };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [multipart]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [textmessage]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{part});
        %item = (__RULE__ => q{part});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [textmessage]},
                  Parse::RecDescent::_tracefirst($text),
                  q{part},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::textmessage($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [textmessage]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{part},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [textmessage]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{textmessage}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = bless $item{textmessage}, $mibs };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [textmessage]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [nestedmessage]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{part});
        %item = (__RULE__ => q{part});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [nestedmessage]},
                  Parse::RecDescent::_tracefirst($text),
                  q{part},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::nestedmessage($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [nestedmessage]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{part},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [nestedmessage]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{nestedmessage}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = bless $item{nestedmessage}, $mibs };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [nestedmessage]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [othertypemessage]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{part});
        %item = (__RULE__ => q{part});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [othertypemessage]},
                  Parse::RecDescent::_tracefirst($text),
                  q{part},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::othertypemessage($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [othertypemessage]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{part},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [othertypemessage]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{othertypemessage}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = bless $item{othertypemessage}, $mibs };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [othertypemessage]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{part},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{part},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{part},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{part},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::personalname
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"personalname"};

    Parse::RecDescent::_trace(q{Trying rule: [personalname]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{personalname},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{personalname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{personalname});
        %item = (__RULE__ => q{personalname});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{personalname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{personalname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{personalname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{personalname},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{personalname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{personalname});
        %item = (__RULE__ => q{personalname});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{personalname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{personalname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{personalname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{personalname},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{personalname},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{personalname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{personalname},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{personalname},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::replyto
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"replyto"};

    Parse::RecDescent::_trace(q{Trying rule: [replyto]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{replyto},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{ADDRESSES});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [ADDRESSES]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{replyto},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{replyto});
        %item = (__RULE__ => q{replyto});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [ADDRESSES]},
                  Parse::RecDescent::_tracefirst($text),
                  q{replyto},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::ADDRESSES($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [ADDRESSES]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{replyto},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [ADDRESSES]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{replyto},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ADDRESSES}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [ADDRESSES]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{replyto},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{replyto},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{replyto},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{replyto},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{replyto},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::rfc822message
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"rfc822message"};

    Parse::RecDescent::_trace(q{Trying rule: [rfc822message]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{rfc822message},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{MESSAGE});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [MESSAGE RFC822]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{rfc822message},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{rfc822message});
        %item = (__RULE__ => q{rfc822message});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [MESSAGE]},
                  Parse::RecDescent::_tracefirst($text),
                  q{rfc822message},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::MESSAGE($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [MESSAGE]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{rfc822message},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [MESSAGE]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{rfc822message},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{MESSAGE}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying subrule: [RFC822]},
                  Parse::RecDescent::_tracefirst($text),
                  q{rfc822message},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{RFC822})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::RFC822($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [RFC822]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{rfc822message},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [RFC822]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{rfc822message},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{RFC822}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{rfc822message},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = "MESSAGE RFC822" };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [MESSAGE RFC822]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{rfc822message},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{rfc822message},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{rfc822message},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{rfc822message},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{rfc822message},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::sender
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"sender"};

    Parse::RecDescent::_trace(q{Trying rule: [sender]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{sender},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{ADDRESSES});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [ADDRESSES]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{sender},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{sender});
        %item = (__RULE__ => q{sender});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [ADDRESSES]},
                  Parse::RecDescent::_tracefirst($text),
                  q{sender},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::ADDRESSES($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [ADDRESSES]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{sender},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [ADDRESSES]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{sender},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ADDRESSES}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [ADDRESSES]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{sender},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{sender},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{sender},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{sender},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{sender},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::sourceroute
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"sourceroute"};

    Parse::RecDescent::_trace(q{Trying rule: [sourceroute]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{sourceroute},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{sourceroute},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{sourceroute});
        %item = (__RULE__ => q{sourceroute});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{sourceroute},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{sourceroute},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{sourceroute},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{sourceroute},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{sourceroute},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{sourceroute});
        %item = (__RULE__ => q{sourceroute});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{sourceroute},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{sourceroute},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{sourceroute},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{sourceroute},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{sourceroute},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{sourceroute},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{sourceroute},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{sourceroute},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::start
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"start"};

    Parse::RecDescent::_trace(q{Trying rule: [start]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{start},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/.*?\\(.*?BODYSTRUCTURE \\(/i});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/.*?\\(.*?BODYSTRUCTURE \\(/i part /\\).*\\)\\r?\\n?/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{start},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{start});
        %item = (__RULE__ => q{start});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/.*?\\(.*?BODYSTRUCTURE \\(/i]}, Parse::RecDescent::_tracefirst($text),
                      q{start},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:.*?\(.*?BODYSTRUCTURE \()/i)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [part]},
                  Parse::RecDescent::_tracefirst($text),
                  q{start},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{part})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::part, 1, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [part]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{start},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [part]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{start},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{part(1)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: [/\\).*\\)\\r?\\n?/]}, Parse::RecDescent::_tracefirst($text),
                      q{start},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/\\).*\\)\\r?\\n?/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\).*\)\r?\n?)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{start},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item{'part(1)'}[0] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/.*?\\(.*?BODYSTRUCTURE \\(/i part /\\).*\\)\\r?\\n?/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{start},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{start},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{start},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{start},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{start},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::subject
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"subject"};

    Parse::RecDescent::_trace(q{Trying rule: [subject]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{subject},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or STRING});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{subject});
        %item = (__RULE__ => q{subject});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{subject},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{subject},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{subject});
        %item = (__RULE__ => q{subject});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{subject},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{subject},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{subject},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{subject},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{subject},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::subpart
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"subpart"};

    Parse::RecDescent::_trace(q{Trying rule: [subpart]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{subpart},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'('});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['(' part ')' <defer:{  ++$subpartCount; }>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{subpart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{subpart});
        %item = (__RULE__ => q{subpart});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{subpart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "("; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [part]},
                  Parse::RecDescent::_tracefirst($text),
                  q{subpart},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{part})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::part($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [part]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{subpart},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [part]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{subpart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{part}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{subpart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = ")"; 1 } and
             substr($text,0,length($_tok)) eq $_tok and
             do { substr($text,0,length($_tok)) = ""; 1; }
        )
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $_tok . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{subpart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {$return = $item{part}};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        

        Parse::RecDescent::_trace(q{Trying directive: [<defer:{  ++$subpartCount; }>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{subpart},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { push @{$thisparser->{deferred}}, sub {  ++$subpartCount; }; };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['(' part ')' <defer:{  ++$subpartCount; }>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{subpart},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{subpart},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{subpart},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{subpart},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{subpart},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::textlines
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"textlines"};

    Parse::RecDescent::_trace(q{Trying rule: [textlines]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{textlines},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or NUMBER});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{textlines},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{textlines});
        %item = (__RULE__ => q{textlines});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textlines},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textlines},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{textlines},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{textlines},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NUMBER]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{textlines},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{textlines});
        %item = (__RULE__ => q{textlines});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NUMBER]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textlines},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NUMBER($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NUMBER]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textlines},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NUMBER]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{textlines},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NUMBER}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NUMBER]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{textlines},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{textlines},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{textlines},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{textlines},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{textlines},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::textmessage
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"textmessage"};

    Parse::RecDescent::_trace(q{Trying rule: [textmessage]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{textmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{TEXT});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [TEXT <commit> basicfields textlines bodyMD5 bodydisp bodylang bodyextra bodyextensions]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{textmessage});
        %item = (__RULE__ => q{textmessage});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [TEXT]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::TEXT($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [TEXT]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [TEXT]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{TEXT}} = $_tok;
        push @item, $_tok;
        
        }

        

        Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { $commit = 1 };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [basicfields]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{basicfields})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::basicfields($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [basicfields]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [basicfields]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{basicfields}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [textlines]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{textlines})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::textlines, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [textlines]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [textlines]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{textlines(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyMD5]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyMD5})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyMD5, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyMD5]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyMD5]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyMD5(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodydisp]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodydisp})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodydisp, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodydisp]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodydisp]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodydisp(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodylang]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodylang})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodylang, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodylang]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodylang]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodylang(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyextra]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyextra})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyextra, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyextra]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyextra]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyextra(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [bodyextensions]},
                  Parse::RecDescent::_tracefirst($text),
                  q{textmessage},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{bodyextensions})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::bodyextensions, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [bodyextensions]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{textmessage},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [bodyextensions]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{bodyextensions(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
	  $return = $item{basicfields} || {};
	  $return->{bodytype} = 'TEXT';
	  take_optional_items($return, \%item
            , qw/textlines bodyMD5 bodydisp bodylang bodyextra/);
	  1;
	};
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [TEXT <commit> basicfields textlines bodyMD5 bodydisp bodylang bodyextra bodyextensions]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{textmessage},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{textmessage},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{textmessage},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{textmessage},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::to
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"to"};

    Parse::RecDescent::_trace(q{Trying rule: [to]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{to},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{ADDRESSES});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [ADDRESSES]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{to},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{to});
        %item = (__RULE__ => q{to});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [ADDRESSES]},
                  Parse::RecDescent::_tracefirst($text),
                  q{to},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::ADDRESSES($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [ADDRESSES]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{to},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [ADDRESSES]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{to},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{ADDRESSES}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [ADDRESSES]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{to},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{to},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{to},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{to},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{to},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::value
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"value"};

    Parse::RecDescent::_trace(q{Trying rule: [value]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{value},
                  $tracelevel)
                    if defined $::RD_TRACE;

    my $def_at = @{$thisparser->{deferred}};
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{NIL, or NUMBER, or STRING, or KVPAIRS});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NIL]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{value});
        %item = (__RULE__ => q{value});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NIL]},
                  Parse::RecDescent::_tracefirst($text),
                  q{value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NIL($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NIL]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NIL]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NIL}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NIL]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [NUMBER]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{value});
        %item = (__RULE__ => q{value});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [NUMBER]},
                  Parse::RecDescent::_tracefirst($text),
                  q{value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::NUMBER($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [NUMBER]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [NUMBER]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{NUMBER}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [NUMBER]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [STRING]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{value});
        %item = (__RULE__ => q{value});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
                  Parse::RecDescent::_tracefirst($text),
                  q{value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::STRING($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{STRING}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [KVPAIRS]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{value});
        %item = (__RULE__ => q{value});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [KVPAIRS]},
                  Parse::RecDescent::_tracefirst($text),
                  q{value},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse::KVPAIRS($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [KVPAIRS]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{value},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [KVPAIRS]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{KVPAIRS}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [KVPAIRS]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }

     splice
                @{$thisparser->{deferred}}, $def_at unless $_matched;
                  
    unless ( $_matched || defined($score) )
    {
             splice @{$thisparser->{deferred}}, $def_at;
              

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{value},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{value},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{value},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{value},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}
}
package Mail::IMAPClient::BodyStructure::Parse; sub new { my $self = bless( {
                 '_AUTOACTION' => undef,
                 '_AUTOTREE' => undef,
                 '_check' => {
                               'itempos' => '',
                               'prevcolumn' => '',
                               'prevline' => '',
                               'prevoffset' => '',
                               'thiscolumn' => '',
                               'thisoffset' => ''
                             },
                 'deferrable' => 1,
                 'localvars' => '',
                 'namespace' => 'Parse::RecDescent::Mail::IMAPClient::BodyStructure::Parse',
                 'rules' => {
                              'ADDRESSES' => bless( {
                                                      'calls' => [
                                                                   'NIL',
                                                                   'RFCNONCOMPLY',
                                                                   'addressstruct'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 96,
                                                      'name' => 'ADDRESSES',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 96,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'NIL'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 96,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'RFCNONCOMPLY'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 96,
                                                                            'number' => 1,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 1,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'description' => '\'(\'',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'line' => 97,
                                                                                                  'lookahead' => 0,
                                                                                                  'pattern' => '('
                                                                                                }, 'Parse::RecDescent::InterpLit' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 97,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 100000000,
                                                                                                  'min' => 1,
                                                                                                  'repspec' => 's',
                                                                                                  'subrule' => 'addressstruct'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'description' => '\')\'',
                                                                                                  'hashname' => '__STRING2__',
                                                                                                  'line' => 97,
                                                                                                  'lookahead' => 0,
                                                                                                  'pattern' => ')'
                                                                                                }, 'Parse::RecDescent::InterpLit' ),
                                                                                         bless( {
                                                                                                  'code' => '{ $return = $item{\'addressstruct(s)\'} }',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'line' => 97,
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'line' => 97,
                                                                            'number' => 2,
                                                                            'patcount' => 0,
                                                                            'strcount' => 2,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'Parse::RecDescent::Rule' ),
                              'BARESTRING' => bless( {
                                                       'calls' => [],
                                                       'changed' => 0,
                                                       'impcount' => 0,
                                                       'line' => 43,
                                                       'name' => 'BARESTRING',
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'actcount' => 1,
                                                                             'dircount' => 0,
                                                                             'error' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'description' => '/^[)(\'"]/',
                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                   'ldelim' => '/',
                                                                                                   'line' => 43,
                                                                                                   'lookahead' => -1,
                                                                                                   'mod' => '',
                                                                                                   'pattern' => '^[)(\'"]',
                                                                                                   'rdelim' => '/'
                                                                                                 }, 'Parse::RecDescent::Token' ),
                                                                                          bless( {
                                                                                                   'description' => '/^(?!\\\\(|\\\\))(?:\\\\\\\\ |\\\\S)+/',
                                                                                                   'hashname' => '__PATTERN2__',
                                                                                                   'ldelim' => '/',
                                                                                                   'line' => 43,
                                                                                                   'lookahead' => 0,
                                                                                                   'mod' => '',
                                                                                                   'pattern' => '^(?!\\(|\\))(?:\\\\ |\\S)+',
                                                                                                   'rdelim' => '/'
                                                                                                 }, 'Parse::RecDescent::Token' ),
                                                                                          bless( {
                                                                                                   'code' => '{ $return = $item{__PATTERN1__} }',
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'line' => 44,
                                                                                                   'lookahead' => 0
                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                        ],
                                                                             'line' => undef,
                                                                             'number' => 0,
                                                                             'patcount' => 2,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'vars' => ''
                                                     }, 'Parse::RecDescent::Rule' ),
                              'DOUBLE_QUOTED_STRING' => bless( {
                                                                 'calls' => [],
                                                                 'changed' => 0,
                                                                 'impcount' => 0,
                                                                 'line' => 41,
                                                                 'name' => 'DOUBLE_QUOTED_STRING',
                                                                 'opcount' => 0,
                                                                 'prods' => [
                                                                              bless( {
                                                                                       'actcount' => 1,
                                                                                       'dircount' => 0,
                                                                                       'error' => undef,
                                                                                       'items' => [
                                                                                                    bless( {
                                                                                                             'description' => '\'"\'',
                                                                                                             'hashname' => '__STRING1__',
                                                                                                             'line' => 41,
                                                                                                             'lookahead' => 0,
                                                                                                             'pattern' => '"'
                                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                                    bless( {
                                                                                                             'description' => '/(?:\\\\\\\\["\\\\\\\\]|[^"])*/',
                                                                                                             'hashname' => '__PATTERN1__',
                                                                                                             'ldelim' => '/',
                                                                                                             'line' => 41,
                                                                                                             'lookahead' => 0,
                                                                                                             'mod' => '',
                                                                                                             'pattern' => '(?:\\\\["\\\\]|[^"])*',
                                                                                                             'rdelim' => '/'
                                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                                    bless( {
                                                                                                             'description' => '\'"\'',
                                                                                                             'hashname' => '__STRING2__',
                                                                                                             'line' => 41,
                                                                                                             'lookahead' => 0,
                                                                                                             'pattern' => '"'
                                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                                    bless( {
                                                                                                             'code' => '{ $return = $item{__PATTERN1__} }',
                                                                                                             'hashname' => '__ACTION1__',
                                                                                                             'line' => 41,
                                                                                                             'lookahead' => 0
                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                  ],
                                                                                       'line' => undef,
                                                                                       'number' => 0,
                                                                                       'patcount' => 1,
                                                                                       'strcount' => 2,
                                                                                       'uncommit' => undef
                                                                                     }, 'Parse::RecDescent::Production' )
                                                                            ],
                                                                 'vars' => ''
                                                               }, 'Parse::RecDescent::Rule' ),
                              'HTML' => bless( {
                                                 'calls' => [],
                                                 'changed' => 0,
                                                 'impcount' => 0,
                                                 'line' => 31,
                                                 'name' => 'HTML',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'description' => '/"HTML"|HTML/i',
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'ldelim' => '/',
                                                                                             'line' => 31,
                                                                                             'lookahead' => 0,
                                                                                             'mod' => 'i',
                                                                                             'pattern' => '"HTML"|HTML',
                                                                                             'rdelim' => '/'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'code' => '{ $return = "HTML"   }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'line' => 31,
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'line' => undef,
                                                                       'number' => 0,
                                                                       'patcount' => 1,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'vars' => ''
                                               }, 'Parse::RecDescent::Rule' ),
                              'KVPAIRS' => bless( {
                                                    'calls' => [
                                                                 'kvpair'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 62,
                                                    'name' => 'KVPAIRS',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 1,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'description' => '\'(\'',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'line' => 62,
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => '('
                                                                                              }, 'Parse::RecDescent::InterpLit' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'expected' => undef,
                                                                                                'line' => 62,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'max' => 100000000,
                                                                                                'min' => 1,
                                                                                                'repspec' => 's',
                                                                                                'subrule' => 'kvpair'
                                                                                              }, 'Parse::RecDescent::Repetition' ),
                                                                                       bless( {
                                                                                                'description' => '\')\'',
                                                                                                'hashname' => '__STRING2__',
                                                                                                'line' => 62,
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => ')'
                                                                                              }, 'Parse::RecDescent::InterpLit' ),
                                                                                       bless( {
                                                                                                'code' => '{ $return = { map { (%$_) } @{$item{\'kvpair(s)\'}} } }',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 63,
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 2,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'Parse::RecDescent::Rule' ),
                              'MESSAGE' => bless( {
                                                    'calls' => [],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 32,
                                                    'name' => 'MESSAGE',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 1,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'description' => '/^"MESSAGE"|^MESSAGE/i',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'ldelim' => '/',
                                                                                                'line' => 32,
                                                                                                'lookahead' => 0,
                                                                                                'mod' => 'i',
                                                                                                'pattern' => '^"MESSAGE"|^MESSAGE',
                                                                                                'rdelim' => '/'
                                                                                              }, 'Parse::RecDescent::Token' ),
                                                                                       bless( {
                                                                                                'code' => '{ $return = "MESSAGE"}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 32,
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 1,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'Parse::RecDescent::Rule' ),
                              'NIL' => bless( {
                                                'calls' => [],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'line' => 34,
                                                'name' => 'NIL',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 1,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'description' => '/^NIL/i',
                                                                                            'hashname' => '__PATTERN1__',
                                                                                            'ldelim' => '/',
                                                                                            'line' => 34,
                                                                                            'lookahead' => 0,
                                                                                            'mod' => 'i',
                                                                                            'pattern' => '^NIL',
                                                                                            'rdelim' => '/'
                                                                                          }, 'Parse::RecDescent::Token' ),
                                                                                   bless( {
                                                                                            'code' => '{ $return = "NIL"    }',
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'line' => 34,
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Action' )
                                                                                 ],
                                                                      'line' => undef,
                                                                      'number' => 0,
                                                                      'patcount' => 1,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'vars' => ''
                                              }, 'Parse::RecDescent::Rule' ),
                              'NUMBER' => bless( {
                                                   'calls' => [],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 36,
                                                   'name' => 'NUMBER',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'description' => '/^(\\\\d+)/',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'ldelim' => '/',
                                                                                               'line' => 36,
                                                                                               'lookahead' => 0,
                                                                                               'mod' => '',
                                                                                               'pattern' => '^(\\d+)',
                                                                                               'rdelim' => '/'
                                                                                             }, 'Parse::RecDescent::Token' ),
                                                                                      bless( {
                                                                                               'code' => '{ $return = $item[1] }',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'line' => 36,
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 1,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'Parse::RecDescent::Rule' ),
                              'PLAIN' => bless( {
                                                  'calls' => [],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 30,
                                                  'name' => 'PLAIN',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 1,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '/^"PLAIN"|^PLAIN/i',
                                                                                              'hashname' => '__PATTERN1__',
                                                                                              'ldelim' => '/',
                                                                                              'line' => 30,
                                                                                              'lookahead' => 0,
                                                                                              'mod' => 'i',
                                                                                              'pattern' => '^"PLAIN"|^PLAIN',
                                                                                              'rdelim' => '/'
                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                     bless( {
                                                                                              'code' => '{ $return = "PLAIN"  }',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'line' => 30,
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'line' => undef,
                                                                        'number' => 0,
                                                                        'patcount' => 1,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'Parse::RecDescent::Rule' ),
                              'RFC822' => bless( {
                                                   'calls' => [],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 33,
                                                   'name' => 'RFC822',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'description' => '/^"RFC822"|^RFC822/i',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'ldelim' => '/',
                                                                                               'line' => 33,
                                                                                               'lookahead' => 0,
                                                                                               'mod' => 'i',
                                                                                               'pattern' => '^"RFC822"|^RFC822',
                                                                                               'rdelim' => '/'
                                                                                             }, 'Parse::RecDescent::Token' ),
                                                                                      bless( {
                                                                                               'code' => '{ $return = "RFC822" }',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'line' => 33,
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 1,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'Parse::RecDescent::Rule' ),
                              'RFCNONCOMPLY' => bless( {
                                                         'calls' => [],
                                                         'changed' => 0,
                                                         'impcount' => 0,
                                                         'line' => 35,
                                                         'name' => 'RFCNONCOMPLY',
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'actcount' => 1,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'description' => '/^\\\\(\\\\)/i',
                                                                                                     'hashname' => '__PATTERN1__',
                                                                                                     'ldelim' => '/',
                                                                                                     'line' => 35,
                                                                                                     'lookahead' => 0,
                                                                                                     'mod' => 'i',
                                                                                                     'pattern' => '^\\(\\)',
                                                                                                     'rdelim' => '/'
                                                                                                   }, 'Parse::RecDescent::Token' ),
                                                                                            bless( {
                                                                                                     'code' => '{ $return = "NIL"    }',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'line' => 35,
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'line' => undef,
                                                                               'number' => 0,
                                                                               'patcount' => 1,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'vars' => ''
                                                       }, 'Parse::RecDescent::Rule' ),
                              'SINGLE_QUOTED_STRING' => bless( {
                                                                 'calls' => [],
                                                                 'changed' => 0,
                                                                 'impcount' => 0,
                                                                 'line' => 38,
                                                                 'name' => 'SINGLE_QUOTED_STRING',
                                                                 'opcount' => 0,
                                                                 'prods' => [
                                                                              bless( {
                                                                                       'actcount' => 1,
                                                                                       'dircount' => 0,
                                                                                       'error' => undef,
                                                                                       'items' => [
                                                                                                    bless( {
                                                                                                             'description' => '\'\'\'',
                                                                                                             'hashname' => '__STRING1__',
                                                                                                             'line' => 40,
                                                                                                             'lookahead' => 0,
                                                                                                             'pattern' => '\''
                                                                                                           }, 'Parse::RecDescent::InterpLit' ),
                                                                                                    bless( {
                                                                                                             'description' => '/(?:\\\\\\\\[\'\\\\\\\\]|[^\'])*/',
                                                                                                             'hashname' => '__PATTERN1__',
                                                                                                             'ldelim' => '/',
                                                                                                             'line' => 40,
                                                                                                             'lookahead' => 0,
                                                                                                             'mod' => '',
                                                                                                             'pattern' => '(?:\\\\[\'\\\\]|[^\'])*',
                                                                                                             'rdelim' => '/'
                                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                                    bless( {
                                                                                                             'description' => '\'\'\'',
                                                                                                             'hashname' => '__STRING2__',
                                                                                                             'line' => 40,
                                                                                                             'lookahead' => 0,
                                                                                                             'pattern' => '\''
                                                                                                           }, 'Parse::RecDescent::InterpLit' ),
                                                                                                    bless( {
                                                                                                             'code' => '{ $return = $item{__PATTERN1__} }',
                                                                                                             'hashname' => '__ACTION1__',
                                                                                                             'line' => 40,
                                                                                                             'lookahead' => 0
                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                  ],
                                                                                       'line' => undef,
                                                                                       'number' => 0,
                                                                                       'patcount' => 1,
                                                                                       'strcount' => 2,
                                                                                       'uncommit' => undef
                                                                                     }, 'Parse::RecDescent::Production' )
                                                                            ],
                                                                 'vars' => ''
                                                               }, 'Parse::RecDescent::Rule' ),
                              'STRING' => bless( {
                                                   'calls' => [
                                                                'DOUBLE_QUOTED_STRING',
                                                                'SINGLE_QUOTED_STRING',
                                                                'BARESTRING'
                                                              ],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 46,
                                                   'name' => 'STRING',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 46,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'DOUBLE_QUOTED_STRING'
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 0,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 46,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'SINGLE_QUOTED_STRING'
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => 46,
                                                                         'number' => 1,
                                                                         'patcount' => 0,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 46,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'BARESTRING'
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => 46,
                                                                         'number' => 2,
                                                                         'patcount' => 0,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'Parse::RecDescent::Rule' ),
                              'STRINGS' => bless( {
                                                    'calls' => [
                                                                 'STRING'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 48,
                                                    'name' => 'STRINGS',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 1,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'description' => '\'(\'',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'line' => 48,
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => '('
                                                                                              }, 'Parse::RecDescent::InterpLit' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'expected' => undef,
                                                                                                'line' => 48,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'max' => 100000000,
                                                                                                'min' => 1,
                                                                                                'repspec' => 's',
                                                                                                'subrule' => 'STRING'
                                                                                              }, 'Parse::RecDescent::Repetition' ),
                                                                                       bless( {
                                                                                                'description' => '\')\'',
                                                                                                'hashname' => '__STRING2__',
                                                                                                'line' => 48,
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => ')'
                                                                                              }, 'Parse::RecDescent::InterpLit' ),
                                                                                       bless( {
                                                                                                'code' => '{ $return = $item{\'STRING(s)\'} }',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 48,
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 2,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'Parse::RecDescent::Rule' ),
                              'TEXT' => bless( {
                                                 'calls' => [],
                                                 'changed' => 0,
                                                 'impcount' => 0,
                                                 'line' => 27,
                                                 'name' => 'TEXT',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'description' => '/^"TEXT"|^TEXT/i',
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'ldelim' => '/',
                                                                                             'line' => 29,
                                                                                             'lookahead' => 0,
                                                                                             'mod' => 'i',
                                                                                             'pattern' => '^"TEXT"|^TEXT',
                                                                                             'rdelim' => '/'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'code' => '{ $return = "TEXT"   }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'line' => 29,
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'line' => undef,
                                                                       'number' => 0,
                                                                       'patcount' => 1,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'vars' => ''
                                               }, 'Parse::RecDescent::Rule' ),
                              'addressstruct' => bless( {
                                                          'calls' => [
                                                                       'personalname',
                                                                       'sourceroute',
                                                                       'mailboxname',
                                                                       'hostname'
                                                                     ],
                                                          'changed' => 0,
                                                          'impcount' => 0,
                                                          'line' => 83,
                                                          'name' => 'addressstruct',
                                                          'opcount' => 0,
                                                          'prods' => [
                                                                       bless( {
                                                                                'actcount' => 1,
                                                                                'dircount' => 0,
                                                                                'error' => undef,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'description' => '\'(\'',
                                                                                                      'hashname' => '__STRING1__',
                                                                                                      'line' => 83,
                                                                                                      'lookahead' => 0,
                                                                                                      'pattern' => '('
                                                                                                    }, 'Parse::RecDescent::InterpLit' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 83,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'personalname'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 83,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'sourceroute'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 83,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'mailboxname'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 83,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'hostname'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'description' => '\')\'',
                                                                                                      'hashname' => '__STRING2__',
                                                                                                      'line' => 83,
                                                                                                      'lookahead' => 0,
                                                                                                      'pattern' => ')'
                                                                                                    }, 'Parse::RecDescent::InterpLit' ),
                                                                                             bless( {
                                                                                                      'code' => '{ bless { personalname => $item{personalname}
		, sourceroute  => $item{sourceroute}
		, mailboxname  => $item{mailboxname}
		, hostname     => $item{hostname}
	        }, \'Mail::IMAPClient::BodyStructure::Address\';
	}',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'line' => 84,
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'line' => undef,
                                                                                'number' => 0,
                                                                                'patcount' => 0,
                                                                                'strcount' => 2,
                                                                                'uncommit' => undef
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'vars' => ''
                                                        }, 'Parse::RecDescent::Rule' ),
                              'basicfields' => bless( {
                                                        'calls' => [
                                                                     'bodysubtype',
                                                                     'bodyparms',
                                                                     'bodyid',
                                                                     'bodydesc',
                                                                     'bodyenc',
                                                                     'bodysize'
                                                                   ],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 115,
                                                        'name' => 'basicfields',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 1,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 115,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'bodysubtype'
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 115,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'bodyparms'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 115,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'bodyid'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 116,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'bodydesc'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 116,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'bodyenc'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 116,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'bodysize'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'code' => '{  $return = { bodysubtype => $item{bodysubtype} };
	   take_optional_items($return, \\%item,
	      qw/bodyparms bodyid bodydesc bodyenc bodysize/);
	   1;
	}',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'line' => 117,
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'Parse::RecDescent::Rule' ),
                              'bcc' => bless( {
                                                'calls' => [
                                                             'ADDRESSES'
                                                           ],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'line' => 100,
                                                'name' => 'bcc',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 100,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'ADDRESSES'
                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                 ],
                                                                      'line' => undef,
                                                                      'number' => 0,
                                                                      'patcount' => 0,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'vars' => ''
                                              }, 'Parse::RecDescent::Rule' ),
                              'bodyMD5' => bless( {
                                                    'calls' => [
                                                                 'NIL',
                                                                 'STRING'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 72,
                                                    'name' => 'bodyMD5',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 72,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'NIL'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' ),
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 72,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'STRING'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => 72,
                                                                          'number' => 1,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'Parse::RecDescent::Rule' ),
                              'bodydesc' => bless( {
                                                     'calls' => [
                                                                  'NIL',
                                                                  'STRING'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 69,
                                                     'name' => 'bodydesc',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '/[()]/',
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'ldelim' => '/',
                                                                                                 'line' => 69,
                                                                                                 'lookahead' => -1,
                                                                                                 'mod' => '',
                                                                                                 'pattern' => '[()]',
                                                                                                 'rdelim' => '/'
                                                                                               }, 'Parse::RecDescent::Token' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 69,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'NIL'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 1,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 69,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'STRING'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => 69,
                                                                           'number' => 1,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'Parse::RecDescent::Rule' ),
                              'bodydisp' => bless( {
                                                     'calls' => [
                                                                  'NIL',
                                                                  'KVPAIRS'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 67,
                                                     'name' => 'bodydisp',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 67,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'NIL'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 67,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'KVPAIRS'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => 67,
                                                                           'number' => 1,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'Parse::RecDescent::Rule' ),
                              'bodyenc' => bless( {
                                                    'calls' => [
                                                                 'NIL',
                                                                 'STRING',
                                                                 'KVPAIRS'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 71,
                                                    'name' => 'bodyenc',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 71,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'NIL'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' ),
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 71,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'STRING'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => 71,
                                                                          'number' => 1,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' ),
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 71,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'KVPAIRS'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => 71,
                                                                          'number' => 2,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'Parse::RecDescent::Rule' ),
                              'bodyextensions' => bless( {
                                                           'calls' => [
                                                                        'NIL',
                                                                        'STRING'
                                                                      ],
                                                           'changed' => 0,
                                                           'impcount' => 0,
                                                           'line' => 76,
                                                           'name' => 'bodyextensions',
                                                           'opcount' => 0,
                                                           'prods' => [
                                                                        bless( {
                                                                                 'actcount' => 0,
                                                                                 'dircount' => 0,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 76,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'NIL'
                                                                                                     }, 'Parse::RecDescent::Subrule' )
                                                                                            ],
                                                                                 'line' => undef,
                                                                                 'number' => 0,
                                                                                 'patcount' => 0,
                                                                                 'strcount' => 0,
                                                                                 'uncommit' => undef
                                                                               }, 'Parse::RecDescent::Production' ),
                                                                        bless( {
                                                                                 'actcount' => 0,
                                                                                 'dircount' => 0,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 76,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'STRING'
                                                                                                     }, 'Parse::RecDescent::Subrule' )
                                                                                            ],
                                                                                 'line' => 76,
                                                                                 'number' => 1,
                                                                                 'patcount' => 0,
                                                                                 'strcount' => 0,
                                                                                 'uncommit' => undef
                                                                               }, 'Parse::RecDescent::Production' )
                                                                      ],
                                                           'vars' => ''
                                                         }, 'Parse::RecDescent::Rule' ),
                              'bodyextra' => bless( {
                                                      'calls' => [
                                                                   'NIL',
                                                                   'STRING',
                                                                   'STRINGS'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 74,
                                                      'name' => 'bodyextra',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 74,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'NIL'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 74,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'STRING'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 74,
                                                                            'number' => 1,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 74,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'STRINGS'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 74,
                                                                            'number' => 2,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'Parse::RecDescent::Rule' ),
                              'bodyid' => bless( {
                                                   'calls' => [
                                                                'NIL',
                                                                'STRING'
                                                              ],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 68,
                                                   'name' => 'bodyid',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'description' => '/[()]/',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'ldelim' => '/',
                                                                                               'line' => 68,
                                                                                               'lookahead' => -1,
                                                                                               'mod' => '',
                                                                                               'pattern' => '[()]',
                                                                                               'rdelim' => '/'
                                                                                             }, 'Parse::RecDescent::Token' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 68,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'NIL'
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 1,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 68,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'STRING'
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => 68,
                                                                         'number' => 1,
                                                                         'patcount' => 0,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'Parse::RecDescent::Rule' ),
                              'bodylang' => bless( {
                                                     'calls' => [
                                                                  'NIL',
                                                                  'STRING',
                                                                  'STRINGS'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 73,
                                                     'name' => 'bodylang',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 73,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'NIL'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 73,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'STRING'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => 73,
                                                                           'number' => 1,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 73,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'STRINGS'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => 73,
                                                                           'number' => 2,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'Parse::RecDescent::Rule' ),
                              'bodyloc' => bless( {
                                                    'calls' => [
                                                                 'NIL',
                                                                 'STRING'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 75,
                                                    'name' => 'bodyloc',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 75,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'NIL'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' ),
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 75,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'STRING'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => 75,
                                                                          'number' => 1,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'Parse::RecDescent::Rule' ),
                              'bodyparms' => bless( {
                                                      'calls' => [
                                                                   'NIL',
                                                                   'KVPAIRS'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 66,
                                                      'name' => 'bodyparms',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 66,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'NIL'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 66,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'KVPAIRS'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 66,
                                                                            'number' => 1,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'Parse::RecDescent::Rule' ),
                              'bodysize' => bless( {
                                                     'calls' => [
                                                                  'NIL',
                                                                  'NUMBER'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 70,
                                                     'name' => 'bodysize',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '/[()]/',
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'ldelim' => '/',
                                                                                                 'line' => 70,
                                                                                                 'lookahead' => -1,
                                                                                                 'mod' => '',
                                                                                                 'pattern' => '[()]',
                                                                                                 'rdelim' => '/'
                                                                                               }, 'Parse::RecDescent::Token' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 70,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'NIL'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 1,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 70,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'NUMBER'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => 70,
                                                                           'number' => 1,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'Parse::RecDescent::Rule' ),
                              'bodystructure' => bless( {
                                                          'calls' => [
                                                                       'part'
                                                                     ],
                                                          'changed' => 0,
                                                          'impcount' => 0,
                                                          'line' => 183,
                                                          'name' => 'bodystructure',
                                                          'opcount' => 0,
                                                          'prods' => [
                                                                       bless( {
                                                                                'actcount' => 1,
                                                                                'dircount' => 0,
                                                                                'error' => undef,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'description' => '\'(\'',
                                                                                                      'hashname' => '__STRING1__',
                                                                                                      'line' => 183,
                                                                                                      'lookahead' => 0,
                                                                                                      'pattern' => '('
                                                                                                    }, 'Parse::RecDescent::InterpLit' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'expected' => undef,
                                                                                                      'line' => 183,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'max' => 100000000,
                                                                                                      'min' => 1,
                                                                                                      'repspec' => 's',
                                                                                                      'subrule' => 'part'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'description' => '\')\'',
                                                                                                      'hashname' => '__STRING2__',
                                                                                                      'line' => 183,
                                                                                                      'lookahead' => 0,
                                                                                                      'pattern' => ')'
                                                                                                    }, 'Parse::RecDescent::InterpLit' ),
                                                                                             bless( {
                                                                                                      'code' => '{ $return = $item{\'part(s)\'} }',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'line' => 184,
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'line' => undef,
                                                                                'number' => 0,
                                                                                'patcount' => 0,
                                                                                'strcount' => 2,
                                                                                'uncommit' => undef
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'vars' => ''
                                                        }, 'Parse::RecDescent::Rule' ),
                              'bodysubtype' => bless( {
                                                        'calls' => [
                                                                     'PLAIN',
                                                                     'HTML',
                                                                     'NIL',
                                                                     'STRING'
                                                                   ],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 54,
                                                        'name' => 'bodysubtype',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 54,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'PLAIN'
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 54,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'HTML'
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => 54,
                                                                              'number' => 1,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 54,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'NIL'
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => 54,
                                                                              'number' => 2,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 54,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'STRING'
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => 54,
                                                                              'number' => 3,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'Parse::RecDescent::Rule' ),
                              'bodytype' => bless( {
                                                     'calls' => [
                                                                  'STRING'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 65,
                                                     'name' => 'bodytype',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 65,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'STRING'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'Parse::RecDescent::Rule' ),
                              'cc' => bless( {
                                               'calls' => [
                                                            'ADDRESSES'
                                                          ],
                                               'changed' => 0,
                                               'impcount' => 0,
                                               'line' => 99,
                                               'name' => 'cc',
                                               'opcount' => 0,
                                               'prods' => [
                                                            bless( {
                                                                     'actcount' => 0,
                                                                     'dircount' => 0,
                                                                     'error' => undef,
                                                                     'items' => [
                                                                                  bless( {
                                                                                           'argcode' => undef,
                                                                                           'implicit' => undef,
                                                                                           'line' => 99,
                                                                                           'lookahead' => 0,
                                                                                           'matchrule' => 0,
                                                                                           'subrule' => 'ADDRESSES'
                                                                                         }, 'Parse::RecDescent::Subrule' )
                                                                                ],
                                                                     'line' => undef,
                                                                     'number' => 0,
                                                                     'patcount' => 0,
                                                                     'strcount' => 0,
                                                                     'uncommit' => undef
                                                                   }, 'Parse::RecDescent::Production' )
                                                          ],
                                               'vars' => ''
                                             }, 'Parse::RecDescent::Rule' ),
                              'date' => bless( {
                                                 'calls' => [
                                                              'NIL',
                                                              'STRING'
                                                            ],
                                                 'changed' => 0,
                                                 'impcount' => 0,
                                                 'line' => 94,
                                                 'name' => 'date',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 0,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'line' => 94,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'NIL'
                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                  ],
                                                                       'line' => undef,
                                                                       'number' => 0,
                                                                       'patcount' => 0,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'actcount' => 0,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'line' => 94,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'STRING'
                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                  ],
                                                                       'line' => 94,
                                                                       'number' => 1,
                                                                       'patcount' => 0,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'vars' => ''
                                               }, 'Parse::RecDescent::Rule' ),
                              'envelope' => bless( {
                                                     'calls' => [
                                                                  'envelopestruct'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 189,
                                                     'name' => 'envelope',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 1,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '/.*?\\\\(.*?ENVELOPE/',
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'ldelim' => '/',
                                                                                                 'line' => 189,
                                                                                                 'lookahead' => 0,
                                                                                                 'mod' => '',
                                                                                                 'pattern' => '.*?\\(.*?ENVELOPE',
                                                                                                 'rdelim' => '/'
                                                                                               }, 'Parse::RecDescent::Token' ),
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 189,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'envelopestruct'
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'description' => '/.*\\\\)/',
                                                                                                 'hashname' => '__PATTERN2__',
                                                                                                 'ldelim' => '/',
                                                                                                 'line' => 189,
                                                                                                 'lookahead' => 0,
                                                                                                 'mod' => '',
                                                                                                 'pattern' => '.*\\)',
                                                                                                 'rdelim' => '/'
                                                                                               }, 'Parse::RecDescent::Token' ),
                                                                                        bless( {
                                                                                                 'code' => '{ $return = $item{envelopestruct} }',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'line' => 190,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 2,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'Parse::RecDescent::Rule' ),
                              'envelopestruct' => bless( {
                                                           'calls' => [
                                                                        'date',
                                                                        'subject',
                                                                        'from',
                                                                        'sender',
                                                                        'replyto',
                                                                        'to',
                                                                        'cc',
                                                                        'bcc',
                                                                        'inreplyto',
                                                                        'messageid'
                                                                      ],
                                                           'changed' => 0,
                                                           'impcount' => 0,
                                                           'line' => 106,
                                                           'name' => 'envelopestruct',
                                                           'opcount' => 0,
                                                           'prods' => [
                                                                        bless( {
                                                                                 'actcount' => 1,
                                                                                 'dircount' => 0,
                                                                                 'error' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'description' => '\'(\'',
                                                                                                       'hashname' => '__STRING1__',
                                                                                                       'line' => 106,
                                                                                                       'lookahead' => 0,
                                                                                                       'pattern' => '('
                                                                                                     }, 'Parse::RecDescent::InterpLit' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 106,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'date'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 106,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'subject'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 106,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'from'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 106,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'sender'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 106,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'replyto'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 106,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'to'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 106,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'cc'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 107,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'bcc'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 107,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'inreplyto'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'argcode' => undef,
                                                                                                       'implicit' => undef,
                                                                                                       'line' => 107,
                                                                                                       'lookahead' => 0,
                                                                                                       'matchrule' => 0,
                                                                                                       'subrule' => 'messageid'
                                                                                                     }, 'Parse::RecDescent::Subrule' ),
                                                                                              bless( {
                                                                                                       'description' => '\')\'',
                                                                                                       'hashname' => '__STRING2__',
                                                                                                       'line' => 107,
                                                                                                       'lookahead' => 0,
                                                                                                       'pattern' => ')'
                                                                                                     }, 'Parse::RecDescent::InterpLit' ),
                                                                                              bless( {
                                                                                                       'code' => '{ $return = bless {}, "Mail::IMAPClient::BodyStructure::Envelope";
	  $return->{$_} = $item{$_}
	     for qw/date subject from sender replyto to cc/
	       , qw/bcc inreplyto messageid/;
	  1;
	}',
                                                                                                       'hashname' => '__ACTION1__',
                                                                                                       'line' => 108,
                                                                                                       'lookahead' => 0
                                                                                                     }, 'Parse::RecDescent::Action' )
                                                                                            ],
                                                                                 'line' => undef,
                                                                                 'number' => 0,
                                                                                 'patcount' => 0,
                                                                                 'strcount' => 2,
                                                                                 'uncommit' => undef
                                                                               }, 'Parse::RecDescent::Production' )
                                                                      ],
                                                           'vars' => ''
                                                         }, 'Parse::RecDescent::Rule' ),
                              'from' => bless( {
                                                 'calls' => [
                                                              'ADDRESSES'
                                                            ],
                                                 'changed' => 0,
                                                 'impcount' => 0,
                                                 'line' => 101,
                                                 'name' => 'from',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 0,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'line' => 101,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'ADDRESSES'
                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                  ],
                                                                       'line' => undef,
                                                                       'number' => 0,
                                                                       'patcount' => 0,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'vars' => ''
                                               }, 'Parse::RecDescent::Rule' ),
                              'hostname' => bless( {
                                                     'calls' => [
                                                                  'NIL',
                                                                  'STRING'
                                                                ],
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'line' => 81,
                                                     'name' => 'hostname',
                                                     'opcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 81,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'NIL'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'actcount' => 0,
                                                                           'dircount' => 0,
                                                                           'error' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'line' => 81,
                                                                                                 'lookahead' => 0,
                                                                                                 'matchrule' => 0,
                                                                                                 'subrule' => 'STRING'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'line' => 81,
                                                                           'number' => 1,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'vars' => ''
                                                   }, 'Parse::RecDescent::Rule' ),
                              'inreplyto' => bless( {
                                                      'calls' => [
                                                                   'NIL',
                                                                   'STRING'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 92,
                                                      'name' => 'inreplyto',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 92,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'NIL'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 92,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'STRING'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 92,
                                                                            'number' => 1,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'Parse::RecDescent::Rule' ),
                              'key' => bless( {
                                                'calls' => [
                                                             'STRING'
                                                           ],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'line' => 56,
                                                'name' => 'key',
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'error' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'line' => 56,
                                                                                            'lookahead' => 0,
                                                                                            'matchrule' => 0,
                                                                                            'subrule' => 'STRING'
                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                 ],
                                                                      'line' => undef,
                                                                      'number' => 0,
                                                                      'patcount' => 0,
                                                                      'strcount' => 0,
                                                                      'uncommit' => undef
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'vars' => ''
                                              }, 'Parse::RecDescent::Rule' ),
                              'kvpair' => bless( {
                                                   'calls' => [
                                                                'key',
                                                                'value'
                                                              ],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 59,
                                                   'name' => 'kvpair',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 1,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'description' => '\')\'',
                                                                                               'hashname' => '__STRING1__',
                                                                                               'line' => 59,
                                                                                               'lookahead' => -1,
                                                                                               'pattern' => ')'
                                                                                             }, 'Parse::RecDescent::InterpLit' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 59,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'key'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 59,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'value'
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'code' => '{ $return = { $item{key} => $item{value} } }',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'line' => 60,
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 0,
                                                                         'strcount' => 1,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'Parse::RecDescent::Rule' ),
                              'mailboxname' => bless( {
                                                        'calls' => [
                                                                     'NIL',
                                                                     'STRING'
                                                                   ],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 80,
                                                        'name' => 'mailboxname',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 80,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'NIL'
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 80,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'STRING'
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => 80,
                                                                              'number' => 1,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'Parse::RecDescent::Rule' ),
                              'messageid' => bless( {
                                                      'calls' => [
                                                                   'NIL',
                                                                   'STRING'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 93,
                                                      'name' => 'messageid',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 93,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'NIL'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 93,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'STRING'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 93,
                                                                            'number' => 1,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'Parse::RecDescent::Rule' ),
                              'multipart' => bless( {
                                                      'calls' => [
                                                                   'subpart',
                                                                   'bodysubtype',
                                                                   'bodyparms',
                                                                   'bodydisp',
                                                                   'bodylang',
                                                                   'bodyloc',
                                                                   'bodyextra',
                                                                   'bodyextensions'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 163,
                                                      'name' => 'multipart',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 1,
                                                                            'dircount' => 2,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 163,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 100000000,
                                                                                                  'min' => 1,
                                                                                                  'repspec' => 's',
                                                                                                  'subrule' => 'subpart'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'code' => '$commit = 1',
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'line' => 163,
                                                                                                  'lookahead' => 0,
                                                                                                  'name' => '<commit>'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 163,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'bodysubtype'
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 164,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 1,
                                                                                                  'min' => 0,
                                                                                                  'repspec' => '?',
                                                                                                  'subrule' => 'bodyparms'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 164,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 1,
                                                                                                  'min' => 0,
                                                                                                  'repspec' => '?',
                                                                                                  'subrule' => 'bodydisp'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 164,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 1,
                                                                                                  'min' => 0,
                                                                                                  'repspec' => '?',
                                                                                                  'subrule' => 'bodylang'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 164,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 1,
                                                                                                  'min' => 0,
                                                                                                  'repspec' => '?',
                                                                                                  'subrule' => 'bodyloc'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 164,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 1,
                                                                                                  'min' => 0,
                                                                                                  'repspec' => '?',
                                                                                                  'subrule' => 'bodyextra'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'expected' => undef,
                                                                                                  'line' => 164,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'max' => 100000000,
                                                                                                  'min' => 0,
                                                                                                  'repspec' => 's?',
                                                                                                  'subrule' => 'bodyextensions'
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'code' => 'push @{$thisparser->{deferred}}, sub {  $subpartCount = 0 };',
                                                                                                  'hashname' => '__DIRECTIVE2__',
                                                                                                  'line' => 165,
                                                                                                  'lookahead' => 0,
                                                                                                  'name' => '<defer:{  $subpartCount = 0 }>'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'code' => '{ $return =
	    { bodysubtype   => $item{bodysubtype}
	    , bodytype      => \'MULTIPART\'
	    , bodystructure => $item{\'subpart(s)\'}
	    };
	  take_optional_items($return, \\%item
              , qw/bodyparms bodydisp bodylang bodyloc bodyextra/);
	  1;
	}',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'line' => 166,
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'Parse::RecDescent::Rule' ),
                              'nestedmessage' => bless( {
                                                          'calls' => [
                                                                       'rfc822message',
                                                                       'bodyparms',
                                                                       'bodyid',
                                                                       'bodydesc',
                                                                       'bodyenc',
                                                                       'bodysize',
                                                                       'envelopestruct',
                                                                       'bodystructure',
                                                                       'textlines',
                                                                       'bodyMD5',
                                                                       'bodydisp',
                                                                       'bodylang',
                                                                       'bodyextra'
                                                                     ],
                                                          'changed' => 0,
                                                          'impcount' => 0,
                                                          'line' => 142,
                                                          'name' => 'nestedmessage',
                                                          'opcount' => 0,
                                                          'prods' => [
                                                                       bless( {
                                                                                'actcount' => 1,
                                                                                'dircount' => 1,
                                                                                'error' => undef,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 142,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'rfc822message'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'code' => '$commit = 1',
                                                                                                      'hashname' => '__DIRECTIVE1__',
                                                                                                      'line' => 142,
                                                                                                      'lookahead' => 0,
                                                                                                      'name' => '<commit>'
                                                                                                    }, 'Parse::RecDescent::Directive' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 142,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'bodyparms'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 142,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'bodyid'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 142,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'bodydesc'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 142,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'bodyenc'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 143,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'bodysize'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'expected' => undef,
                                                                                                      'line' => 144,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'max' => 1,
                                                                                                      'min' => 0,
                                                                                                      'repspec' => '?',
                                                                                                      'subrule' => 'envelopestruct'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'expected' => undef,
                                                                                                      'line' => 144,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'max' => 1,
                                                                                                      'min' => 0,
                                                                                                      'repspec' => '?',
                                                                                                      'subrule' => 'bodystructure'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'expected' => undef,
                                                                                                      'line' => 144,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'max' => 1,
                                                                                                      'min' => 0,
                                                                                                      'repspec' => '?',
                                                                                                      'subrule' => 'textlines'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'expected' => undef,
                                                                                                      'line' => 145,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'max' => 1,
                                                                                                      'min' => 0,
                                                                                                      'repspec' => '?',
                                                                                                      'subrule' => 'bodyMD5'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'expected' => undef,
                                                                                                      'line' => 145,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'max' => 1,
                                                                                                      'min' => 0,
                                                                                                      'repspec' => '?',
                                                                                                      'subrule' => 'bodydisp'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'expected' => undef,
                                                                                                      'line' => 145,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'max' => 1,
                                                                                                      'min' => 0,
                                                                                                      'repspec' => '?',
                                                                                                      'subrule' => 'bodylang'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'expected' => undef,
                                                                                                      'line' => 145,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'max' => 1,
                                                                                                      'min' => 0,
                                                                                                      'repspec' => '?',
                                                                                                      'subrule' => 'bodyextra'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'code' => '{
	  $return = {};
	  $return->{$_} = $item{$_}
	      for qw/bodyparms bodyid bodydesc bodyenc bodysize/;
#             envelopestruct bodystructure textlines/;

	  take_optional_items($return, \\%item
            , qw/envelopestruct bodystructure textlines/
	    , qw/bodyMD5 bodydisp bodylang bodyextra/);

	  merge_hash($return, $item{bodystructure}[0]);
	  merge_hash($return, $item{basicfields});
	  $return->{bodytype}    = "MESSAGE" ;
	  $return->{bodysubtype} = "RFC822" ;
	  1;
	}',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'line' => 146,
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'line' => undef,
                                                                                'number' => 0,
                                                                                'patcount' => 0,
                                                                                'strcount' => 0,
                                                                                'uncommit' => undef
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'vars' => ''
                                                        }, 'Parse::RecDescent::Rule' ),
                              'othertypemessage' => bless( {
                                                             'calls' => [
                                                                          'bodytype',
                                                                          'basicfields',
                                                                          'bodyMD5',
                                                                          'bodydisp',
                                                                          'bodylang',
                                                                          'bodyextra',
                                                                          'bodyextensions'
                                                                        ],
                                                             'changed' => 0,
                                                             'impcount' => 0,
                                                             'line' => 133,
                                                             'name' => 'othertypemessage',
                                                             'opcount' => 0,
                                                             'prods' => [
                                                                          bless( {
                                                                                   'actcount' => 1,
                                                                                   'dircount' => 0,
                                                                                   'error' => undef,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'argcode' => undef,
                                                                                                         'implicit' => undef,
                                                                                                         'line' => 133,
                                                                                                         'lookahead' => 0,
                                                                                                         'matchrule' => 0,
                                                                                                         'subrule' => 'bodytype'
                                                                                                       }, 'Parse::RecDescent::Subrule' ),
                                                                                                bless( {
                                                                                                         'argcode' => undef,
                                                                                                         'implicit' => undef,
                                                                                                         'line' => 133,
                                                                                                         'lookahead' => 0,
                                                                                                         'matchrule' => 0,
                                                                                                         'subrule' => 'basicfields'
                                                                                                       }, 'Parse::RecDescent::Subrule' ),
                                                                                                bless( {
                                                                                                         'argcode' => undef,
                                                                                                         'expected' => undef,
                                                                                                         'line' => 133,
                                                                                                         'lookahead' => 0,
                                                                                                         'matchrule' => 0,
                                                                                                         'max' => 1,
                                                                                                         'min' => 0,
                                                                                                         'repspec' => '?',
                                                                                                         'subrule' => 'bodyMD5'
                                                                                                       }, 'Parse::RecDescent::Repetition' ),
                                                                                                bless( {
                                                                                                         'argcode' => undef,
                                                                                                         'expected' => undef,
                                                                                                         'line' => 133,
                                                                                                         'lookahead' => 0,
                                                                                                         'matchrule' => 0,
                                                                                                         'max' => 1,
                                                                                                         'min' => 0,
                                                                                                         'repspec' => '?',
                                                                                                         'subrule' => 'bodydisp'
                                                                                                       }, 'Parse::RecDescent::Repetition' ),
                                                                                                bless( {
                                                                                                         'argcode' => undef,
                                                                                                         'expected' => undef,
                                                                                                         'line' => 134,
                                                                                                         'lookahead' => 0,
                                                                                                         'matchrule' => 0,
                                                                                                         'max' => 1,
                                                                                                         'min' => 0,
                                                                                                         'repspec' => '?',
                                                                                                         'subrule' => 'bodylang'
                                                                                                       }, 'Parse::RecDescent::Repetition' ),
                                                                                                bless( {
                                                                                                         'argcode' => undef,
                                                                                                         'expected' => undef,
                                                                                                         'line' => 134,
                                                                                                         'lookahead' => 0,
                                                                                                         'matchrule' => 0,
                                                                                                         'max' => 1,
                                                                                                         'min' => 0,
                                                                                                         'repspec' => '?',
                                                                                                         'subrule' => 'bodyextra'
                                                                                                       }, 'Parse::RecDescent::Repetition' ),
                                                                                                bless( {
                                                                                                         'argcode' => undef,
                                                                                                         'expected' => undef,
                                                                                                         'line' => 134,
                                                                                                         'lookahead' => 0,
                                                                                                         'matchrule' => 0,
                                                                                                         'max' => 100000000,
                                                                                                         'min' => 0,
                                                                                                         'repspec' => 's?',
                                                                                                         'subrule' => 'bodyextensions'
                                                                                                       }, 'Parse::RecDescent::Repetition' ),
                                                                                                bless( {
                                                                                                         'code' => '{ $return = { bodytype => $item{bodytype} };
	  take_optional_items($return, \\%item
             , qw/bodyMD5 bodydisp bodylang bodyextra/ );
	  merge_hash($return, $item{basicfields});
	  1;
	}',
                                                                                                         'hashname' => '__ACTION1__',
                                                                                                         'line' => 135,
                                                                                                         'lookahead' => 0
                                                                                                       }, 'Parse::RecDescent::Action' )
                                                                                              ],
                                                                                   'line' => undef,
                                                                                   'number' => 0,
                                                                                   'patcount' => 0,
                                                                                   'strcount' => 0,
                                                                                   'uncommit' => undef
                                                                                 }, 'Parse::RecDescent::Production' )
                                                                        ],
                                                             'vars' => ''
                                                           }, 'Parse::RecDescent::Rule' ),
                              'part' => bless( {
                                                 'calls' => [
                                                              'multipart',
                                                              'textmessage',
                                                              'nestedmessage',
                                                              'othertypemessage'
                                                            ],
                                                 'changed' => 0,
                                                 'impcount' => 0,
                                                 'line' => 178,
                                                 'name' => 'part',
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'line' => 178,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'multipart'
                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                    bless( {
                                                                                             'code' => '{ $return = bless $item{multipart}, $mibs }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'line' => 178,
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'line' => undef,
                                                                       'number' => 0,
                                                                       'patcount' => 0,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'line' => 179,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'textmessage'
                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                    bless( {
                                                                                             'code' => '{ $return = bless $item{textmessage}, $mibs }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'line' => 179,
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'line' => 179,
                                                                       'number' => 1,
                                                                       'patcount' => 0,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'line' => 180,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'nestedmessage'
                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                    bless( {
                                                                                             'code' => '{ $return = bless $item{nestedmessage}, $mibs }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'line' => 180,
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'line' => 180,
                                                                       'number' => 2,
                                                                       'patcount' => 0,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'dircount' => 0,
                                                                       'error' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'line' => 181,
                                                                                             'lookahead' => 0,
                                                                                             'matchrule' => 0,
                                                                                             'subrule' => 'othertypemessage'
                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                    bless( {
                                                                                             'code' => '{ $return = bless $item{othertypemessage}, $mibs }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'line' => 181,
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'line' => 181,
                                                                       'number' => 3,
                                                                       'patcount' => 0,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'vars' => ''
                                               }, 'Parse::RecDescent::Rule' ),
                              'personalname' => bless( {
                                                         'calls' => [
                                                                      'NIL',
                                                                      'STRING'
                                                                    ],
                                                         'changed' => 0,
                                                         'impcount' => 0,
                                                         'line' => 78,
                                                         'name' => 'personalname',
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'actcount' => 0,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'line' => 78,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => 'NIL'
                                                                                                   }, 'Parse::RecDescent::Subrule' )
                                                                                          ],
                                                                               'line' => undef,
                                                                               'number' => 0,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'Parse::RecDescent::Production' ),
                                                                      bless( {
                                                                               'actcount' => 0,
                                                                               'dircount' => 0,
                                                                               'error' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'line' => 78,
                                                                                                     'lookahead' => 0,
                                                                                                     'matchrule' => 0,
                                                                                                     'subrule' => 'STRING'
                                                                                                   }, 'Parse::RecDescent::Subrule' )
                                                                                          ],
                                                                               'line' => 78,
                                                                               'number' => 1,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'uncommit' => undef
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'vars' => ''
                                                       }, 'Parse::RecDescent::Rule' ),
                              'replyto' => bless( {
                                                    'calls' => [
                                                                 'ADDRESSES'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 102,
                                                    'name' => 'replyto',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 102,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'ADDRESSES'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'Parse::RecDescent::Rule' ),
                              'rfc822message' => bless( {
                                                          'calls' => [
                                                                       'MESSAGE',
                                                                       'RFC822'
                                                                     ],
                                                          'changed' => 0,
                                                          'impcount' => 0,
                                                          'line' => 52,
                                                          'name' => 'rfc822message',
                                                          'opcount' => 0,
                                                          'prods' => [
                                                                       bless( {
                                                                                'actcount' => 1,
                                                                                'dircount' => 0,
                                                                                'error' => undef,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 52,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'MESSAGE'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'line' => 52,
                                                                                                      'lookahead' => 0,
                                                                                                      'matchrule' => 0,
                                                                                                      'subrule' => 'RFC822'
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'code' => '{ $return = "MESSAGE RFC822" }',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'line' => 52,
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'line' => undef,
                                                                                'number' => 0,
                                                                                'patcount' => 0,
                                                                                'strcount' => 0,
                                                                                'uncommit' => undef
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'vars' => ''
                                                        }, 'Parse::RecDescent::Rule' ),
                              'sender' => bless( {
                                                   'calls' => [
                                                                'ADDRESSES'
                                                              ],
                                                   'changed' => 0,
                                                   'impcount' => 0,
                                                   'line' => 103,
                                                   'name' => 'sender',
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'actcount' => 0,
                                                                         'dircount' => 0,
                                                                         'error' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'line' => 103,
                                                                                               'lookahead' => 0,
                                                                                               'matchrule' => 0,
                                                                                               'subrule' => 'ADDRESSES'
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => undef,
                                                                         'number' => 0,
                                                                         'patcount' => 0,
                                                                         'strcount' => 0,
                                                                         'uncommit' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'vars' => ''
                                                 }, 'Parse::RecDescent::Rule' ),
                              'sourceroute' => bless( {
                                                        'calls' => [
                                                                     'NIL',
                                                                     'STRING'
                                                                   ],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 79,
                                                        'name' => 'sourceroute',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 79,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'NIL'
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'actcount' => 0,
                                                                              'dircount' => 0,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 79,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'STRING'
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => 79,
                                                                              'number' => 1,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'Parse::RecDescent::Rule' ),
                              'start' => bless( {
                                                  'calls' => [
                                                               'part'
                                                             ],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 186,
                                                  'name' => 'start',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 1,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '/.*?\\\\(.*?BODYSTRUCTURE \\\\(/i',
                                                                                              'hashname' => '__PATTERN1__',
                                                                                              'ldelim' => '/',
                                                                                              'line' => 186,
                                                                                              'lookahead' => 0,
                                                                                              'mod' => 'i',
                                                                                              'pattern' => '.*?\\(.*?BODYSTRUCTURE \\(',
                                                                                              'rdelim' => '/'
                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'expected' => undef,
                                                                                              'line' => 186,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'max' => 1,
                                                                                              'min' => 1,
                                                                                              'repspec' => '1',
                                                                                              'subrule' => 'part'
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'description' => '/\\\\).*\\\\)\\\\r?\\\\n?/',
                                                                                              'hashname' => '__PATTERN2__',
                                                                                              'ldelim' => '/',
                                                                                              'line' => 186,
                                                                                              'lookahead' => 0,
                                                                                              'mod' => '',
                                                                                              'pattern' => '\\).*\\)\\r?\\n?',
                                                                                              'rdelim' => '/'
                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                     bless( {
                                                                                              'code' => '{ $return = $item{\'part(1)\'}[0] }',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'line' => 187,
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'line' => undef,
                                                                        'number' => 0,
                                                                        'patcount' => 2,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'Parse::RecDescent::Rule' ),
                              'subject' => bless( {
                                                    'calls' => [
                                                                 'NIL',
                                                                 'STRING'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 91,
                                                    'name' => 'subject',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 91,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'NIL'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' ),
                                                                 bless( {
                                                                          'actcount' => 0,
                                                                          'dircount' => 0,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 91,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'STRING'
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => 91,
                                                                          'number' => 1,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'Parse::RecDescent::Rule' ),
                              'subpart' => bless( {
                                                    'calls' => [
                                                                 'part'
                                                               ],
                                                    'changed' => 0,
                                                    'impcount' => 0,
                                                    'line' => 176,
                                                    'name' => 'subpart',
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'actcount' => 1,
                                                                          'dircount' => 1,
                                                                          'error' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'description' => '\'(\'',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'line' => 176,
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => '('
                                                                                              }, 'Parse::RecDescent::InterpLit' ),
                                                                                       bless( {
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'line' => 176,
                                                                                                'lookahead' => 0,
                                                                                                'matchrule' => 0,
                                                                                                'subrule' => 'part'
                                                                                              }, 'Parse::RecDescent::Subrule' ),
                                                                                       bless( {
                                                                                                'description' => '\')\'',
                                                                                                'hashname' => '__STRING2__',
                                                                                                'line' => 176,
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => ')'
                                                                                              }, 'Parse::RecDescent::InterpLit' ),
                                                                                       bless( {
                                                                                                'code' => '{$return = $item{part}}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 176,
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Action' ),
                                                                                       bless( {
                                                                                                'code' => 'push @{$thisparser->{deferred}}, sub {  ++$subpartCount; };',
                                                                                                'hashname' => '__DIRECTIVE1__',
                                                                                                'line' => 176,
                                                                                                'lookahead' => 0,
                                                                                                'name' => '<defer:{  ++$subpartCount; }>'
                                                                                              }, 'Parse::RecDescent::Directive' )
                                                                                     ],
                                                                          'line' => undef,
                                                                          'number' => 0,
                                                                          'patcount' => 0,
                                                                          'strcount' => 2,
                                                                          'uncommit' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => ''
                                                  }, 'Parse::RecDescent::Rule' ),
                              'textlines' => bless( {
                                                      'calls' => [
                                                                   'NIL',
                                                                   'NUMBER'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'line' => 50,
                                                      'name' => 'textlines',
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 50,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'NIL'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'error' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'line' => 50,
                                                                                                  'lookahead' => 0,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'NUMBER'
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 50,
                                                                            'number' => 1,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'vars' => ''
                                                    }, 'Parse::RecDescent::Rule' ),
                              'textmessage' => bless( {
                                                        'calls' => [
                                                                     'TEXT',
                                                                     'basicfields',
                                                                     'textlines',
                                                                     'bodyMD5',
                                                                     'bodydisp',
                                                                     'bodylang',
                                                                     'bodyextra',
                                                                     'bodyextensions'
                                                                   ],
                                                        'changed' => 0,
                                                        'impcount' => 0,
                                                        'line' => 123,
                                                        'name' => 'textmessage',
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'actcount' => 1,
                                                                              'dircount' => 1,
                                                                              'error' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 123,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'TEXT'
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'code' => '$commit = 1',
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'line' => 123,
                                                                                                    'lookahead' => 0,
                                                                                                    'name' => '<commit>'
                                                                                                  }, 'Parse::RecDescent::Directive' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'line' => 123,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'subrule' => 'basicfields'
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 123,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'textlines'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 123,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'bodyMD5'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 124,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'bodydisp'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 124,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'bodylang'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 124,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 1,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => '?',
                                                                                                    'subrule' => 'bodyextra'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'argcode' => undef,
                                                                                                    'expected' => undef,
                                                                                                    'line' => 124,
                                                                                                    'lookahead' => 0,
                                                                                                    'matchrule' => 0,
                                                                                                    'max' => 100000000,
                                                                                                    'min' => 0,
                                                                                                    'repspec' => 's?',
                                                                                                    'subrule' => 'bodyextensions'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'code' => '{
	  $return = $item{basicfields} || {};
	  $return->{bodytype} = \'TEXT\';
	  take_optional_items($return, \\%item
            , qw/textlines bodyMD5 bodydisp bodylang bodyextra/);
	  1;
	}',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'line' => 125,
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'line' => undef,
                                                                              'number' => 0,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'uncommit' => undef
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'vars' => ''
                                                      }, 'Parse::RecDescent::Rule' ),
                              'to' => bless( {
                                               'calls' => [
                                                            'ADDRESSES'
                                                          ],
                                               'changed' => 0,
                                               'impcount' => 0,
                                               'line' => 104,
                                               'name' => 'to',
                                               'opcount' => 0,
                                               'prods' => [
                                                            bless( {
                                                                     'actcount' => 0,
                                                                     'dircount' => 0,
                                                                     'error' => undef,
                                                                     'items' => [
                                                                                  bless( {
                                                                                           'argcode' => undef,
                                                                                           'implicit' => undef,
                                                                                           'line' => 104,
                                                                                           'lookahead' => 0,
                                                                                           'matchrule' => 0,
                                                                                           'subrule' => 'ADDRESSES'
                                                                                         }, 'Parse::RecDescent::Subrule' )
                                                                                ],
                                                                     'line' => undef,
                                                                     'number' => 0,
                                                                     'patcount' => 0,
                                                                     'strcount' => 0,
                                                                     'uncommit' => undef
                                                                   }, 'Parse::RecDescent::Production' )
                                                          ],
                                               'vars' => ''
                                             }, 'Parse::RecDescent::Rule' ),
                              'value' => bless( {
                                                  'calls' => [
                                                               'NIL',
                                                               'NUMBER',
                                                               'STRING',
                                                               'KVPAIRS'
                                                             ],
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'line' => 57,
                                                  'name' => 'value',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'line' => 57,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'NIL'
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'line' => undef,
                                                                        'number' => 0,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'line' => 57,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'NUMBER'
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'line' => 57,
                                                                        'number' => 1,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'line' => 57,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'STRING'
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'line' => 57,
                                                                        'number' => 2,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'actcount' => 0,
                                                                        'dircount' => 0,
                                                                        'error' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'line' => 57,
                                                                                              'lookahead' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'KVPAIRS'
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'line' => 57,
                                                                        'number' => 3,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'vars' => ''
                                                }, 'Parse::RecDescent::Rule' )
                            },
                 'startcode' => ''
               }, 'Parse::RecDescent' );
}