//
//  AppDelegate.swift
//  LifxMenu
//
//  Created by Antony Nasce on 08/10/2015.
//  Copyright (c) 2015 Antony Nasce. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var StatusMenu: NSMenu!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let icon = NSImage(named: "statusIcon")
        icon?.setTemplate(true)
        
        statusItem.image = icon
        statusItem.menu = StatusMenu
    }

    @IBAction func onMenuClicked(sender: NSMenuItem) {

        system("python /Users/ant/Downloads/lifxlan-master/examples/broadcast_on.py")
    }
    
    @IBAction func offMenuClicked(sender: NSMenuItem) {

        system("python /Users/ant/Downloads/lifxlan-master/examples/broadcast_off.py")
    }

}

