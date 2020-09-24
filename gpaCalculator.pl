=begin
******************************************************
Hayden Reynolds
CSCI-260
Assignment 2
******************************************************
=end
=cut
use strict;

print "Enter the students name: ";
my $name = <>;
my $break = 1;
my $ctr = 0;
my (@class, @credits, @gradeRes, $input1,$input2,$input3, $credT, $credP,$honorPts, $gpa);
my %grades = ('a'=>4,'b'=>3,'c'=>2,'d'=>1,'f'=>0 );
while($break != 0)
{
    print "Enter a class: ";
    $input1 = <>;
    chomp $input1;
    if($input1 eq "")
    {
        $break = 0;
    }
    elsif($input1 ne "")
    {
        push(@class,$input1);
        print "Enter the number of credits: ";
        $input2 = <>;
        chomp $input2;
        push(@credits,$input2);
        print "Enter the grade received: ";
        $input3 = lc<>;
        chomp $input3;
        if($input3 ne "f")
        {
            $credP = $credP + @credits[$ctr];
        }
        $honorPts = $honorPts + $grades{$input3};
        push(@gradeRes,$input3);
        $ctr += 1;
    }
}

my $i = 0;
while ($i<scalar@credits)
{
    $credT = $credT+$credits[$i];
    $i++;
}
my $k = 0;
while ($i<scalar@credits)
{
    $credT = $credT+$credits[$i];
    $i++;
}

$gpa = ($honorPts/(scalar@class));

#*************Printing Transcript*************
print "\nTranscript for $name";
my $text1 = sprintf("%-20s","Credits taken: ");
my $text4 = sprintf("%6d\n",$credT);
my $text2 = sprintf("%-20s","Credits passed: ",);
my $text5 = sprintf("%6d\n",$credP);
my $text3 = sprintf("%-20s","Semester GPA: ","%6d\n",$gpa);
my $text6 =sprintf("%6.2f\n",$gpa);

print $text1;
print $text4;
print $text2;
print $text5;
print $text3;
print $text6;










