﻿#pragma checksum "..\..\..\Lists\PagePlayers.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "A650982B5B407BC6696B4B2D0B98CDD9B956B377734EE20749FAB7DA59077673"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using NBA_Management_System.Lists;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace NBA_Management_System.Lists {
    
    
    /// <summary>
    /// PagePlayers
    /// </summary>
    public partial class PagePlayers : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 16 "..\..\..\Lists\PagePlayers.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel sp;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\..\Lists\PagePlayers.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbTeam;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\..\Lists\PagePlayers.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tbSearchPlayer;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\..\Lists\PagePlayers.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dgPlayer;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\Lists\PagePlayers.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnAdd;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\Lists\PagePlayers.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnEdit;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\Lists\PagePlayers.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnDelete;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\..\Lists\PagePlayers.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnDrop;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/NBA Management System;component/lists/pageplayers.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Lists\PagePlayers.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 9 "..\..\..\Lists\PagePlayers.xaml"
            ((NBA_Management_System.Lists.PagePlayers)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Page_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.sp = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 3:
            this.cbTeam = ((System.Windows.Controls.ComboBox)(target));
            
            #line 18 "..\..\..\Lists\PagePlayers.xaml"
            this.cbTeam.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cbTeam_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.tbSearchPlayer = ((System.Windows.Controls.TextBox)(target));
            
            #line 20 "..\..\..\Lists\PagePlayers.xaml"
            this.tbSearchPlayer.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.tbSearchPlayer_TextChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.dgPlayer = ((System.Windows.Controls.DataGrid)(target));
            
            #line 22 "..\..\..\Lists\PagePlayers.xaml"
            this.dgPlayer.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.dgPlayer_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 6:
            this.btnAdd = ((System.Windows.Controls.Button)(target));
            
            #line 41 "..\..\..\Lists\PagePlayers.xaml"
            this.btnAdd.Click += new System.Windows.RoutedEventHandler(this.btnAdd_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.btnEdit = ((System.Windows.Controls.Button)(target));
            
            #line 42 "..\..\..\Lists\PagePlayers.xaml"
            this.btnEdit.Click += new System.Windows.RoutedEventHandler(this.btnEdit_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.btnDelete = ((System.Windows.Controls.Button)(target));
            
            #line 43 "..\..\..\Lists\PagePlayers.xaml"
            this.btnDelete.Click += new System.Windows.RoutedEventHandler(this.btnDelete_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.btnDrop = ((System.Windows.Controls.Button)(target));
            
            #line 44 "..\..\..\Lists\PagePlayers.xaml"
            this.btnDrop.Click += new System.Windows.RoutedEventHandler(this.btnDrop_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

