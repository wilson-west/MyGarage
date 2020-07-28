// 
// Copyright (c) .NET Foundation. All rights reserved.
// Licensed under the MIT License. See LICENSE file in the project root for full license information.
// 
#region Using Statements

using System;
using DotNetNuke.Entities.Modules;

#endregion

namespace MyHobbyCar.MyGarage
{

	public partial class View : PortalModuleBase
	{

		#region Event Handlers

		protected override void OnInit(EventArgs e)
		{
			base.OnInit(e);

			cmdSave.Click += cmdSave_Click;
			cmdCancel.Click += cmdCancel_Click;
            cmdCancel.Visible = false;
            cmdCancel.Visible = System.Web.HttpContext.Current.User.Identity.IsAuthenticated;

        }

		protected override void OnLoad(EventArgs e)
		{
			base.OnLoad(e);
			
			if (!Page.IsPostBack)
			{
                             txtField.Text = (string)Settings["field"];
			}
		}
		
		protected void cmdSave_Click(object sender, EventArgs e)
		{
            ModuleController.Instance.UpdateModuleSetting(ModuleId, "field", txtField.Text);
            DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, "Update Successful", DotNetNuke.UI.Skins.Controls.ModuleMessage.ModuleMessageType.GreenSuccess);
		}


		protected void cmdCancel_Click(object sender, EventArgs e)
		{
		}

		#endregion

	}
}

