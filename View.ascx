<%@ Control Language="C#" AutoEventWireup="false" Inherits="MyHobbyCar.MyGarage.View" CodeFile="View.ascx.cs" %>

<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

<h2>All Autos</h2>
<ef:EntityDataSource ID="EntityDataSource1" runat="server" ContextTypeName="MyHobbyCarEntities" EntitySetName="mhc_Autos" DefaultContainerName="MyHobbyCarEntities">
</ef:EntityDataSource>

<asp:repeater DataSourceID="EntityDataSource1" runat="server" >
    <ItemTemplate >
         ID: <asp:Label runat="server" ID="id" Text='<%# Eval("Id") %>' />
        <br />
         Make: <asp:Label runat="server" ID="make" Text='<%# Eval("make") %>' />
        <br />
         Model: <asp:Label runat="server" ID="model" Text='<%# Eval("model") %>' />
        <br />
         Year: <asp:Label runat="server" ID="year" Text='<%# Eval("year") %>' />
        <br />
         Cost: <asp:Label runat="server" ID="cost" Text='<%# Eval("cost") %>' />
        <br />
    </ItemTemplate>

</asp:repeater>

<div class="dnnForm dnnEdit dnnClear" id="dnnEdit">
    <fieldset>
        
        <div class="dnnFormItem">

            <dnn:label id="plField" runat="server" text="Field" helptext="Enter a value" controlname="txtField" />

            <asp:textbox id="txtField" runat="server" maxlength="255" />

        </div>

   </fieldset>

    <ul class="dnnActions dnnClear">

        <li><asp:linkbutton id="cmdSave" text="Save" runat="server" cssclass="dnnPrimaryAction" />
        </li>

        <li><asp:linkbutton id="cmdCancel" text="Cancel" runat="server" cssclass="dnnSecondaryAction" /></li>

    </ul>

</div>




