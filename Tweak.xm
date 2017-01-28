%hook UIKeyboardImpl
- (double)timestampOfLastTouchesEnded
{
    return 0;
}
%end
