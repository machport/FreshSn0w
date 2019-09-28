#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#include "MobileDevice.h"
struct am_device* device;



@implementation ViewController
- (IBAction)update:(id)sender {
    system("rm -rf ~/Documents/checkm8gui/ipwndfu/");
    system("rm -rf ~/Documents/checkm8gui/irecovery/");
    system("git clone https://github.com/clarityzzz/ipwndfu.git  ~/Documents/checkm8gui/ipwndfu/");
    system("git clone https://github.com/machport/iRecoveryFreshSn0w.git ~/Documents/checkm8gui/irecovery/");
}
- (IBAction)recoveryaction:(id)sender {
    system("chmod +x ~/Documents/checkm8gui/irecovery/irecovery; echo '~/Documents/checkm8gui/irecovery/irecovery -s' > ~/Documents/checkm8gui/irecovery.sh; chmod +x ~/Documents/checkm8gui/irecovery.sh; /Applications/Utilities/Terminal.app/Contents/MacOS/Terminal ~/Documents/checkm8gui/irecovery.sh");
    system("killall Terminal");
}
- (IBAction)autoboot:(id)sender {
    system("chmod +x ~/Documents/checkm8gui/irecovery/irecovery; echo '~/Documents/checkm8gui/irecovery/irecovery -a' > ~/Documents/checkm8gui/irecoveryboot.sh; chmod +x ~/Documents/checkm8gui/irecoveryboot.sh; ~/Documents/checkm8gui/irecoveryboot.sh");
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.]
    
    [[_makesn0w cell] setBackgroundColor:[NSColor systemBlueColor]];
    [[_updatebutton cell] setBackgroundColor:[NSColor systemBlueColor]];
    [[_recovery cell] setBackgroundColor:[NSColor systemBlueColor]];
    [[_pwnxout cell] setBackgroundColor:[NSColor systemBlueColor]];
    [[_autobootout cell] setBackgroundColor:[NSColor systemBlueColor]];
    [[_rebootout cell] setBackgroundColor:[NSColor systemBlueColor]];



}
- (IBAction)reboot:(id)sender {
    system("chmod +x ~/Documents/checkm8gui/irecovery/irecovery; echo '~/Documents/checkm8gui/irecovery/irecovery -c reboot' > ~/Documents/checkm8gui/irecoveryreboot.sh; chmod +x ~/Documents/checkm8gui/irecoveryreboot.sh; ~/Documents/checkm8gui/irecoveryreboot.sh");
}



- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
- (IBAction)Sn0w:(id)sender {
    system("chmod +x ~/Documents/checkm8gui/irecovery/irecovery; cd ~/Documents/checkm8gui/ipwndfu/; ~/Documents/checkm8gui/ipwndfu/ipwndfu -p");
    NSAlert *alert = [NSAlert alertWithMessageText:@"Maybe Done? (this is beta software)" defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@"I hope it worked!"];
    [alert runModal];
}
- (IBAction)pwnx:(id)sender {
    system("cd ~/Documents/checkm8gui/ipwndfu/; ~/Documents/checkm8gui/ipwndfu/ipwndfu -x");
    NSAlert *alert = [NSAlert alertWithMessageText:@"Maybe Done? (this is beta software)" defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@"I hope it worked!"];
    [alert runModal];
}


@end
