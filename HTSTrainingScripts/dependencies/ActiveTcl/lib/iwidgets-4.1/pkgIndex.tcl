# Tcl package index file
package ifneeded iwidgets 4.1 [list ::apply {dir {
  package require itk 4
   namespace eval ::iwidgets {
       namespace export *
       variable version 4.1
  }
  source [file join $dir colors.itcl]
  source [file join $dir roman.itcl]
  source [file join $dir buttonbox.itk]
  source [file join $dir calendar.itk]
  source [file join $dir canvasprintbox.itk]
  source [file join $dir shell.itk]
  source [file join $dir dialogshell.itk]
  source [file join $dir dialog.itk]
  source [file join $dir canvasprintdialog.itk]
  source [file join $dir labeledframe.itk]
  source [file join $dir checkbox.itk]
  source [file join $dir labeledwidget.itk]
  source [file join $dir entryfield.itk]
  source [file join $dir combobox.itk]
  source [file join $dir datefield.itk]
  source [file join $dir dateentry.itk]
  source [file join $dir disjointlistbox.itk]
  source [file join $dir extbutton.itk]
  source [file join $dir extfileselectionbox.itk]
  source [file join $dir extfileselectiondialog.itk]
  source [file join $dir feedback.itk]
  source [file join $dir fileselectionbox.itk]
  source [file join $dir fileselectiondialog.itk]
  source [file join $dir finddialog.itk]
  source [file join $dir scrolledwidget.itk]
  source [file join $dir hierarchy.itk]
  source [file join $dir hyperhelp.itk]
  source [file join $dir mainwindow.itk]
  source [file join $dir menubar.itk]
  source [file join $dir messagebox.itk]
  source [file join $dir messagedialog.itk]
  source [file join $dir notebook.itk]
  source [file join $dir optionmenu.itk]
  source [file join $dir panedwindow.itk]
  source [file join $dir pane.itk]
  source [file join $dir promptdialog.itk]
  source [file join $dir pushbutton.itk]
  source [file join $dir radiobox.itk]
  source [file join $dir regexpfield.itk]
  source [file join $dir scrolledcanvas.itk]
  source [file join $dir scrolledframe.itk]
  source [file join $dir scrolledtext.itk]
  source [file join $dir scrolledhtml.itk]
  source [file join $dir scrolledlistbox.itk]
  source [file join $dir selectionbox.itk]
  source [file join $dir selectiondialog.itk]
  source [file join $dir spindate.itk]
  source [file join $dir spinner.itk]
  source [file join $dir spinint.itk]
  source [file join $dir spintime.itk]
  source [file join $dir tabnotebook.itk]
  source [file join $dir tabset.itk]
  source [file join $dir timefield.itk]
  source [file join $dir timeentry.itk]
  source [file join $dir toolbar.itk]
  source [file join $dir watch.itk]
  package provide iwidgets 4.1
}} $dir]
