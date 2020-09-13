local graphicUserInterface =  {}

utility = require('utilityLibrary')
user = require('userInterface')



function graphicUserInterface.checkCB_1_1_1(ui_handle, item_id, is_checked)
 
    local xml = [[
        <ui closeable="false" title="Position 1.1" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di1.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage1"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui11 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage1(ui_handle, item_id)
    
            if ui11 then simUI.destroy(ui11) end
        
        end 
    
    end
    
    

    msg=msg.."checkCB_1_1_1"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_1_2(ui_handle, item_id, is_checked)

    local xml = [[
        <ui closeable="false" title="Position 1.2" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage2"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui12 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage2(ui_handle, item_id)
    
            if ui12 then simUI.destroy(ui12) end
        
        end

    end
    
    
    
    msg=msg.."checkCB_1_1_2"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_1_3(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 1.3" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di3.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage3"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui13 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage3(ui_handle, item_id)
    
            if ui13 then simUI.destroy(ui13) end
        
        end 
    end

    msg=msg.."checkCB_1_1_3"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_1_4(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 1.4" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage4"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui14 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage4(ui_handle, item_id)
    
            if ui14 then simUI.destroy(ui14) end
        
        end 
    end
    
    msg=msg.."checkCB_1_1_4"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_2_1(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.1" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage21"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui21 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage21(ui_handle, item_id)
    
            if ui21 then simUI.destroy(ui21) end
        
        end 
    end
    
    msg=msg.."checkCB_1_2_1"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_2_2(ui_handle, item_id, is_checked)

    local xml = [[
        <ui closeable="false" title="Position 2.2" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage22"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui22 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage22(ui_handle, item_id)
    
            if ui22 then simUI.destroy(ui22) end
        
        end 
    end
    
    msg=msg.."checkCB_1_2_2"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_2_3(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.3" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage23"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui23 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage23(ui_handle, item_id)
    
            if ui23 then simUI.destroy(ui23) end
        
        end 
    end
    
    msg=msg.."checkCB_1_2_3"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_2_4(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.4" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage24"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui24 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage24(ui_handle, item_id)
    
            if ui24 then simUI.destroy(ui24) end
        
        end 
    end
    
    msg=msg.."checkCB_1_2_4"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_2_5(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.5" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di5.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage25"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui25 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage25(ui_handle, item_id)
    
            if ui25 then simUI.destroy(ui25) end
        
        end 
    end
    
    msg=msg.."checkCB_1_2_5"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_2_6(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.6" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di6.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage26"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui26 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage26(ui_handle, item_id)
    
            if ui26 then simUI.destroy(ui26) end
        
        end 
    end
    
    msg=msg.."checkCB_1_2_6"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_2_7(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.7" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di7.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage27"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui27 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage27(ui_handle, item_id)
    
            if ui27 then simUI.destroy(ui27) end
        
        end 
    end
    
    msg=msg.."checkCB_1_2_7"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_2_8(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.8" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage28"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui28 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage28(ui_handle, item_id)
    
            if ui28 then simUI.destroy(ui28) end
        
        end 
    end
    
    msg=msg.."checkCB_1_2_8"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_1_2_9(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.9" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage29"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui29 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage29(ui_handle, item_id)
    
            if ui29 then simUI.destroy(ui29) end
        
        end 
    end
    
    msg=msg.."checkCB_1_2_9"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_1_1(ui_handle, item_id, is_checked)
 
    local xml = [[
        <ui closeable="false" title="Position 1.1" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di1.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage1"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui11 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage1(ui_handle, item_id)
    
            if ui11 then simUI.destroy(ui11) end
        
        end 
    
    end
    
    

    msg=msg.."checkCB_2_1_1"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_1_2(ui_handle, item_id, is_checked)

    local xml = [[
        <ui closeable="false" title="Position 1.2" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage2"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui12 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage2(ui_handle, item_id)
    
            if ui12 then simUI.destroy(ui12) end
        
        end

    end
    
    
    
    msg=msg.."checkCB_2_1_2"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_1_3(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 1.3" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di3.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage3"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui13 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage3(ui_handle, item_id)
    
            if ui13 then simUI.destroy(ui13) end
        
        end 
    end

    msg=msg.."checkCB_2_1_3"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_1_4(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 1.4" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage4"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui14 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage4(ui_handle, item_id)
    
            if ui14 then simUI.destroy(ui14) end
        
        end 
    end
    
    msg=msg.."checkCB_2_1_4"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_2_1(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.1" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage21"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui21 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage21(ui_handle, item_id)
    
            if ui21 then simUI.destroy(ui21) end
        
        end 
    end
    
    msg=msg.."checkCB_2_2_1"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_2_2(ui_handle, item_id, is_checked)

    local xml = [[
        <ui closeable="false" title="Position 2.2" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage22"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui22 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage22(ui_handle, item_id)
    
            if ui22 then simUI.destroy(ui22) end
        
        end 
    end
    
    msg=msg.."checkCB_2_2_2"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_2_3(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.3" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage23"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui23 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage23(ui_handle, item_id)
    
            if ui23 then simUI.destroy(ui23) end
        
        end 
    end
    
    msg=msg.."checkCB_2_2_3"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_2_4(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.4" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage24"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui24 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage24(ui_handle, item_id)
    
            if ui24 then simUI.destroy(ui24) end
        
        end 
    end
    
    msg=msg.."checkCB_2_2_4"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_2_5(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.5" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di5.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage25"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui25 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage25(ui_handle, item_id)
    
            if ui25 then simUI.destroy(ui25) end
        
        end 
    end
    
    msg=msg.."checkCB_2_2_5"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_2_6(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.6" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di6.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage26"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui26 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage26(ui_handle, item_id)
    
            if ui26 then simUI.destroy(ui26) end
        
        end 
    end
    
    msg=msg.."checkCB_2_2_6"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_2_7(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.7" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di7.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage27"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui27 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage27(ui_handle, item_id)
    
            if ui27 then simUI.destroy(ui27) end
        
        end 
    end
    
    msg=msg.."checkCB_2_2_7"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_2_8(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.8" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage28"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui28 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage28(ui_handle, item_id)
    
            if ui28 then simUI.destroy(ui28) end
        
        end 
    end
    
    msg=msg.."checkCB_2_2_8"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_2_2_9(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.9" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage29"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui29 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage29(ui_handle, item_id)
    
            if ui29 then simUI.destroy(ui29) end
        
        end 
    end
    
    msg=msg.."checkCB_2_2_9"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_1_1(ui_handle, item_id, is_checked)
 
    local xml = [[
        <ui closeable="false" title="Position 1.1" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di1.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage1"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui11 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage1(ui_handle, item_id)
    
            if ui11 then simUI.destroy(ui11) end
        
        end 
    
    end
    
    

    msg=msg.."checkCB_3_1_1"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_1_2(ui_handle, item_id, is_checked)

    local xml = [[
        <ui closeable="false" title="Position 1.2" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage2"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui12 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage2(ui_handle, item_id)
    
            if ui12 then simUI.destroy(ui12) end
        
        end

    end
    
    
    
    msg=msg.."checkCB_3_1_2"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_1_3(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 1.3" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di3.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage3"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui13 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage3(ui_handle, item_id)
    
            if ui13 then simUI.destroy(ui13) end
        
        end 
    end

    msg=msg.."checkCB_3_1_3"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_1_4(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 1.4" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage4"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui14 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage4(ui_handle, item_id)
    
            if ui14 then simUI.destroy(ui14) end
        
        end 
    end
    
    msg=msg.."checkCB_3_1_4"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_2_1(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.1" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage21"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui21 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage21(ui_handle, item_id)
    
            if ui21 then simUI.destroy(ui21) end
        
        end 
    end
    
    msg=msg.."checkCB_3_2_1"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_2_2(ui_handle, item_id, is_checked)

    local xml = [[
        <ui closeable="false" title="Position 2.2" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage22"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui22 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage22(ui_handle, item_id)
    
            if ui22 then simUI.destroy(ui22) end
        
        end 
    end
    
    msg=msg.."checkCB_3_2_2"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_2_3(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.3" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage23"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui23 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage23(ui_handle, item_id)
    
            if ui23 then simUI.destroy(ui23) end
        
        end 
    end
    
    msg=msg.."checkCB_3_2_3"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_2_4(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.4" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage24"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui24 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage24(ui_handle, item_id)
    
            if ui24 then simUI.destroy(ui24) end
        
        end 
    end
    
    msg=msg.."checkCB_3_2_4"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_2_5(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.5" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di5.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage25"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui25 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage25(ui_handle, item_id)
    
            if ui25 then simUI.destroy(ui25) end
        
        end 
    end
    
    msg=msg.."checkCB_3_2_5"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_2_6(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.6" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di6.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage26"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui26 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage26(ui_handle, item_id)
    
            if ui26 then simUI.destroy(ui26) end
        
        end 
    end
    
    msg=msg.."checkCB_3_2_6"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_2_7(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.7" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di7.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage27"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui27 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage27(ui_handle, item_id)
    
            if ui27 then simUI.destroy(ui27) end
        
        end 
    end
    
    msg=msg.."checkCB_3_2_7"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_2_8(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.8" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage28"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui28 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage28(ui_handle, item_id)
    
            if ui28 then simUI.destroy(ui28) end
        
        end 
    end
    
    msg=msg.."checkCB_3_2_8"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_3_2_9(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.9" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage29"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui29 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage29(ui_handle, item_id)
    
            if ui29 then simUI.destroy(ui29) end
        
        end 
    end
    
    msg=msg.."checkCB_3_2_9"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_1_1(ui_handle, item_id, is_checked)
 
    local xml = [[
        <ui closeable="false" title="Position 1.1" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di1.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage1"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui11 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage1(ui_handle, item_id)
    
            if ui11 then simUI.destroy(ui11) end
        
        end 
    
    end
    
    msg=msg.."checkCB_4_1_1"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_1_2(ui_handle, item_id, is_checked)

    local xml = [[
        <ui closeable="false" title="Position 1.2" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage2"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui12 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage2(ui_handle, item_id)
    
            if ui12 then simUI.destroy(ui12) end
        
        end

    end
    
    msg=msg.."checkCB_4_1_2"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_1_3(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 1.3" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di3.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage3"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui13 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage3(ui_handle, item_id)
    
            if ui13 then simUI.destroy(ui13) end
        
        end 
    end

    msg=msg.."checkCB_4_1_3"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_1_4(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 1.4" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage4"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui14 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage4(ui_handle, item_id)
    
            if ui14 then simUI.destroy(ui14) end
        
        end 
    end
    
    msg=msg.."checkCB_4_1_4"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_2_1(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.1" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage21"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui21 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage21(ui_handle, item_id)
    
            if ui21 then simUI.destroy(ui21) end
        
        end 
    end
    
    msg=msg.."checkCB_4_2_1"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_2_2(ui_handle, item_id, is_checked)

    local xml = [[
        <ui closeable="false" title="Position 2.2" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage22"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui22 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage22(ui_handle, item_id)
    
            if ui22 then simUI.destroy(ui22) end
        
        end 
    end
    
    msg=msg.."checkCB_4_2_2"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_2_3(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.3" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage23"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui23 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage23(ui_handle, item_id)
    
            if ui23 then simUI.destroy(ui23) end
        
        end 
    end
    
    msg=msg.."checkCB_4_2_3"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_2_4(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.4" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage24"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui24 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage24(ui_handle, item_id)
    
            if ui24 then simUI.destroy(ui24) end
        
        end 
    end
    
    msg=msg.."checkCB_4_2_4"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_2_5(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.5" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di5.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage25"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui25 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage25(ui_handle, item_id)
    
            if ui25 then simUI.destroy(ui25) end
        
        end 
    end
    
    msg=msg.."checkCB_4_2_5"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_2_6(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.6" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di6.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage26"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui26 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage26(ui_handle, item_id)
    
            if ui26 then simUI.destroy(ui26) end
        
        end 
    end
    
    msg=msg.."checkCB_4_2_6"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_2_7(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.7" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di7.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage27"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui27 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage27(ui_handle, item_id)
    
            if ui27 then simUI.destroy(ui27) end
        
        end 
    end
    
    msg=msg.."checkCB_4_2_7"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_2_8(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.8" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage28"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui28 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage28(ui_handle, item_id)
    
            if ui28 then simUI.destroy(ui28) end
        
        end 
    end
    
    msg=msg.."checkCB_4_2_8"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_4_2_9(ui_handle, item_id, is_checked)
    
    local xml = [[
        <ui closeable="false" title="Position 2.9" resizable="true">
            <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
            <button text="Ok" on-click="graphicUser.buttonCloseImage29"/>
            </ui>
        ]]

    local msg = "Checkbox : "

    if is_checked~=0 then

        ui29 = simUI.create(xml)

        function graphicUserInterface.buttonCloseImage29(ui_handle, item_id)
    
            if ui29 then simUI.destroy(ui29) end
        
        end 
    end
    
    msg=msg.."checkCB_4_2_9"
    simAddStatusbarMessage(msg)

end

function graphicUserInterface.checkCB_5_1_1(ui_handle, item_id, is_checked)

    local missS = ""
    local misss = ""
    local missB = ""
    local missb = ""
    local missH = ""
    local missd = ""
    local missp = ""
    local missangle = ""
    local misshf = ""

    if is_checked~=0 then 
        local S = graphicUserInterface.takeSui1()
        local s = graphicUserInterface.takesui1()
        local B = graphicUserInterface.takeBui1()
        local b = graphicUserInterface.takebui1()
        local H = graphicUserInterface.takeHui1()
        local d = graphicUserInterface.takedui1()
        local p = graphicUserInterface.takepui1()
        local angle = graphicUserInterface.takeAngleui1()
        local hf = graphicUserInterface.takehfui1()

        if S == nil or s == nil or B == nil or b == nil or H == nil or hf == nil then
            simUI.setCheckboxValue(ui1,27,0,true)
            
            if S == nil then
                missS = 'S'
            end

            if s == nil then
                misss = 's'
            end

            if B == nil then
                missB = 'B'
            end

            if b == nil then
                missb = 'b'
            end
    
            if H == nil then
                missH = 'H'
            end

            if hf == nil then
                misshf = 'hf'
            end

            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s %s.",missS,misss,missB,missb,missH,misshf)

            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else
            if (d == nil or angle == nil) and p == nil then
                simUI.setCheckboxValue(ui1,27,0,true)

                if d == nil then
                    missd = 'd'
                end
        
                if p == nil then
                    missp = 'p'
                end
        
                if angle == nil then
                    missangle = 'angle'
                end

                local xmlError = string.format("Missing of the following parameters: %s %s %s.",missd,missp,missangle)

                sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

            end
            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di2.png" width="310" height="250"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage1"/>
                </ui>
            ]]

            ui51 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage1(ui_handle, item_id)

                if ui51 then simUI.destroy(ui51) end
            
            end

        end
    end
    
end

function graphicUserInterface.checkCB_5_1_2(ui_handle, item_id, is_checked)
    
    local missS = ""
    local missB = ""
    local missb = ""
    local missH = ""
    local missh = ""

    if is_checked~=0 then 

        local S = graphicUserInterface.takeSui1()
        local B = graphicUserInterface.takeBui1()
        local b = graphicUserInterface.takebui1()
        local H = graphicUserInterface.takeHui1()
        local h = graphicUserInterface.takehui1()
        if S == nil or B == nil or b == nil or H  == nil or h == nil then

            simUI.setCheckboxValue(ui1,28,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if b == nil then
                missb = 'b'
            end
    
            if H == nil then
                missH = 'H'
            end
    
            if h == nil then
                missh = 'h'
            end

            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s.",missS,missB,missb,missH,missh)

            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")
        else
            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di2.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage2"/>
                </ui>
                ]]

            ui52 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage2(ui_handle, item_id)

                if ui52 then simUI.destroy(ui52) end
            
            end

        end

    end

end

function graphicUserInterface.checkCB_5_1_3(ui_handle, item_id, is_checked)
    
    local missS = ""
    local missB = ""
    local missb = ""
    local missh = ""

    if is_checked~=0 then 

        local S = graphicUserInterface.takeSui1()
        local B = graphicUserInterface.takeBui1()
        local b = graphicUserInterface.takebui1()
        local h = graphicUserInterface.takehui1()

        if S == nil or B == nil or b == nil or h == nil then

            simUI.setCheckboxValue(ui1,29,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if b == nil then
                missb = 'b'
            end
    
            if h == nil then
                missh = 'h'
            end
    
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s.",missS,missB,missb,missh)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di3.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage3"/>
                </ui>
                ]]

            ui53 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage3(ui_handle, item_id)

                if ui53 then simUI.destroy(ui53) end
            
            end
    
        end
        
    end

end

function graphicUserInterface.checkCB_5_1_4(ui_handle, item_id, is_checked)
    
    local missS = ""
    local missB = ""
    local missb = ""
    local missh = ""

    if is_checked~=0 then 
        local S = graphicUserInterface.takeSui1()
        local B = graphicUserInterface.takeBui1()
        local b = graphicUserInterface.takebui1()
        local h = graphicUserInterface.takehui1()
        if S == nil or B == nil or b == nil or h == nil then
            simUI.setCheckboxValue(ui1,30,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if b == nil then
                missb = 'b'
            end
    
            if h == nil then
                missh = 'h'
            end
    
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s.",missS,missB,missb,missh)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")
        else
            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\1di4.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage4"/>
                </ui>
                ]]

            ui54 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage(ui_handle, item_id)

                if ui54 then simUI.destroy(ui54) end
            
            end

        end
        
    end

end

function graphicUserInterface.checkCB_5_2_1(ui_handle, item_id, is_checked)
    
    local missS = ""
    local misss = ""
    local missB = ""
    local missbb = ""
    local missH = ""
    local misshh = ""

    if is_checked~=0 then

        local S = graphicUserInterface.takeSui1()
        local s = graphicUserInterface.takesui1()
        local B = graphicUserInterface.takeBui1()
        local bb = graphicUserInterface.takebbui1()
        local H = graphicUserInterface.takeHui1()

        local hh = graphicUserInterface.takehhui1()
        if S == nil or s == nil or B == nil or bb == nil or H == nil or hh == nil then

            simUI.setCheckboxValue(ui1,31,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if s == nil then
                misss = 's'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if bb == nil then
                missbb = 'bb'
            end
    
            if H == nil then
                missH = 'H'
            end
    
            if hh == nil then
                misshh = 'hh'
            end
    
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s %s.",missS,misss,missB,missbb,missH,misshh)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage21"/>
                </ui>
                ]]

            ui55 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage21(ui_handle, item_id)

                if ui55 then simUI.destroy(ui55) end
            
            end
        end
        
    end

end

function graphicUserInterface.checkCB_5_2_2(ui_handle, item_id, is_checked)
    
    local missS = ""
    local misss = ""
    local missB = ""
    local missbb = ""
    local missH = ""
    local misshh = ""

    if is_checked~=0 then

        local S = graphicUserInterface.takeSui1()
        local s = graphicUserInterface.takesui1()
        local B = graphicUserInterface.takeBui1()
        local bb = graphicUserInterface.takebbui1()
        local H = graphicUserInterface.takeHui1()
        local hh = graphicUserInterface.takehhui1()

        if S == nil or s == nil or B == nil or bb == nil or H == nil or hh == nil then

            simUI.setCheckboxValue(ui1,32,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if s == nil then
                misss = 's'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if bb == nil then
                missbb = 'bb'
            end
    
            if H == nil then
                missH = 'H'
            end
    
            if hh == nil then
                misshh = 'hh'
            end
    
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s %s.",missS,misss,missB,missbb,missH,misshh)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di1e2di2.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage22"/>
                </ui>
                ]]

            ui56 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage22(ui_handle, item_id)

                if ui56 then simUI.destroy(ui56) end
            
            end

        end
        
    end

end

function graphicUserInterface.checkCB_5_2_3(ui_handle, item_id, is_checked)
    
    local missB = ""
    local missH = ""

    if is_checked~=0 then

        local B = graphicUserInterface.takeBui1()
        local H = graphicUserInterface.takeHui1()

        if B == nil or H == nil then

            simUI.setCheckboxValue(ui1,33,0,true)
        
        
            if B == nil then
                missB = 'B'
            end

            if H == nil then
                missH = 'H'
            end

            local xmlError = string.format("Missing of the following parameters: %s %s.",missB,missH)

            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage23"/>
                </ui>
                ]]

            ui57 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage23(ui_handle, item_id)

                if ui57 then simUI.destroy(ui57) end
            
            end

        end
    

    end

end

function graphicUserInterface.checkCB_5_2_4(ui_handle, item_id, is_checked)
    
    local missS = ""
    local misss = ""
    local missB = ""
    local missbb = ""
    local missH = ""
    local misshh = ""

    if is_checked~=0 then

        local S = graphicUserInterface.takeSui1()
        local s = graphicUserInterface.takesui1()
        local B = graphicUserInterface.takeBui1()
        local bb = graphicUserInterface.takebbui1()
        local H = graphicUserInterface.takeHui1()
        local hh = graphicUserInterface.takehhui1()

        if S == nil or s == nil or B == nil or bb == nil or H == nil or hh == nil then

            simUI.setCheckboxValue(ui1,34,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if s == nil then
                misss = 's'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if bb == nil then
                missbb = 'bb'
            end
    
            if H == nil then
                missH = 'H'
            end
    
            if hh == nil then
                misshh = 'hh'
            end
    
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s %s.",missS,misss,missB,missbb,missH,misshh)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di3e2di4.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage24"/>
                </ui>
                ]]

            ui57 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage24(ui_handle, item_id)

                if ui57 then simUI.destroy(ui57) end
            
            end

        end

    end

end

function graphicUserInterface.checkCB_5_2_5(ui_handle, item_id, is_checked)
    
    local missS = ""
    local misss = ""
    local missB = ""
    local missb = ""
    local missh = ""
    local misshf = ""

    if is_checked~=0 then

        local S = graphicUserInterface.takeSui1()
        local s = graphicUserInterface.takesui1()
        local B = graphicUserInterface.takeBui1()
        local b = graphicUserInterface.takebui1()
        local h = graphicUserInterface.takehui1()
        local hf = graphicUserInterface.takehfui1()

        if S == nil or s == nil or B == nil or b == nil or h == nil or hf == nil then

            simUI.setCheckboxValue(ui1,35,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if s == nil then
                misss = 's'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if b == nil then
                missb = 'b'
            end
    
            if h == nil then
                missh = 'h'
            end
    
            if hf == nil then
                misshf = 'hf'
            end
    
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s %s.",missS,misss,missB,missb,missh,misshf)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di5.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage25"/>
                </ui>
                ]]

            ui58 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage25(ui_handle, item_id)

                if ui58 then simUI.destroy(ui58) end
            
            end

        end
    
    end

end

function graphicUserInterface.checkCB_5_2_6(ui_handle, item_id, is_checked)
    
    local missS = ""
    local misss = ""
    local missB = ""
    local missb = ""
    local missbb = ""
    local missH = ""
    local missh = ""

    if is_checked~=0 then

        local S = graphicUserInterface.takeSui1()
        local s = graphicUserInterface.takesui1()
        local B = graphicUserInterface.takeBui1()
        local b = graphicUserInterface.takebui1()
        local bb = graphicUserInterface.takebbui1()
        local H = graphicUserInterface.takeHui1()
        local h = graphicUserInterface.takehui1()

        if S == nil or s == nil or B == nil or b == nil or bb == nil or H == nil or h == nil then

            simUI.setCheckboxValue(ui1,36,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if s == nil then
                misss = 's'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if b == nil then
                missb = 'b'
            end
    
            if bb == nil then
                missbb = 'bb'
            end
    
            if H == nil then
                missH = 'H'
            end
    
            if h == nil then
                missh = 'h'
            end
    
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s %s %s.",missS,misss,missB,missb,missbb,missH,missh)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di6.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage26"/>
                </ui>
                ]]

            ui59 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage26(ui_handle, item_id)

                if ui59 then simUI.destroy(ui59) end
            
            end
    
        end

    end

end

function graphicUserInterface.checkCB_5_2_7(ui_handle, item_id, is_checked)
    
    local missS = ""
    local missB = ""
    local missb = ""
    local missH = ""
    local missh = ""

    if is_checked~=0 then

        local S = graphicUserInterface.takeSui1()
        local B = graphicUserInterface.takeBui1()
        local b = graphicUserInterface.takebui1()
        local H = graphicUserInterface.takeHui1()
        local h = graphicUserInterface.takehui1()

        if S == nil or B == nil or b == nil or H == nil or h == nil then

            simUI.setCheckboxValue(ui1,37,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if b == nil then
                missb = 'b'
            end
    
            if H == nil then
                missH = 'H'
            end
    
            if h == nil then
                missh = 'h'
            end
    
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s.",missS,missB,missb,missH,missh)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di7.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage27"/>
                </ui>
                ]]

            ui60 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage27(ui_handle, item_id)

                if ui60 then simUI.destroy(ui60) end
            
            end

        end
        
    end

end

function graphicUserInterface.checkCB_5_2_8(ui_handle, item_id, is_checked)
    
    local missS = ""
    local misss = ""
    local missB = ""
    local missb = ""
    local missH = ""

    if is_checked~=0 then

        local S = graphicUserInterface.takeSui1()
        local s = graphicUserInterface.takesui1()
        local B = graphicUserInterface.takeBui1()
        local b = graphicUserInterface.takebui1()
        local H = graphicUserInterface.takeHui1()

        if S == nil or s == nil or B == nil or b == nil or H == nil then

            simUI.setCheckboxValue(ui1,38,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if s == nil then
                misss = 's'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if b == nil then
                missb = 'b'
            end
    
            if H == nil then
                missH = 'H'
            end
    
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s.",missS,misss,missB,missb,missH)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage28"/>
                </ui>
                ]]

            ui61 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage(ui_handle, item_id)

                if ui61 then simUI.destroy(ui61) end
            
            end

        end

    end

end

function graphicUserInterface.checkCB_5_2_9(ui_handle, item_id, is_checked)
    
    local missS = ""
    local misss = ""
    local missB = ""
    local missb = ""
    local missH = ""
    
    if is_checked~=0 then

        local S = graphicUserInterface.takeSui1()
        local s = graphicUserInterface.takesui1()
        local B = graphicUserInterface.takeBui1()
        local b = graphicUserInterface.takebui1()
        local H = graphicUserInterface.takeHui1()

        if S == nil or s == nil or B == nil or b == nil or H == nil then

            simUI.setCheckboxValue(ui1,39,0,true)

            if S == nil then
                missS = 'S'
            end
    
            if s == nil then
                misss = 's'
            end
    
            if B == nil then
                missB = 'B'
            end
    
            if b == nil then
                missb = 'b'
            end
    
            if H == nil then
                missH = 'H'
            end
            
            local xmlError = string.format("Missing of the following parameters: %s %s %s %s %s.",missS,misss,missB,missb,missH)
    
            sim.displayDialog("GUI report",xmlError,sim.dlgstyle_ok,false,"")

        else

            local xml = [[
                <ui closeable="false" title="Control position interface" resizable="true">
                    <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Analisi_Sui_Robot_Collaborativi\\Disegni_posizioni\\2di8e2di9.png" width="310" height="240"/>
                    <button text="Ok" on-click="graphicUser.buttonCloseImage29"/>
                </ui>
                ]]

            ui62 = simUI.create(xml)

            function graphicUserInterface.buttonCloseImage29(ui_handle, item_id)

                if ui62 then simUI.destroy(ui62) end
            
            end

        end
        
    end

end

function graphicUserInterface.takeS()

    local value=simUI.getEditValue(uiMain,1)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takes()

    local value=simUI.getEditValue(uiMain,2)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takeB()

    local value=simUI.getEditValue(uiMain,3)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takeb()

    local value=simUI.getEditValue(uiMain,4)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takebb()

    local value=simUI.getEditValue(uiMain,5)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takeH()

    local value=simUI.getEditValue(uiMain,6)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takeh()

    local value=simUI.getEditValue(uiMain,7)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takehh()

    local value=simUI.getEditValue(uiMain,8)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.taked()

    local value=simUI.getEditValue(uiMain,9)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takep()

    local value=simUI.getEditValue(uiMain,10)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takeAngle()

    local value=simUI.getEditValue(uiMain,11)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takeFilenameW()

    local value=simUI.getEditValue(uiMain,12)
    if value ~= '' then
        return value
    end
    
end

function graphicUserInterface.takeFilenameR()

    local value=simUI.getEditValue(uiMain,13)
    if value ~= '' then
        return value
    end

end

function graphicUserInterface.takehf()

    local value=simUI.getEditValue(uiMain,14)
    if value ~= '' then
        return tonumber(value)
    end
    
end

function graphicUserInterface.takeSui1()
    
    local value=simUI.getEditValue(uiMain,15)
        if value ~= '' then
            value = tonumber(value)
        
        return value
        
    end
    
end

function graphicUserInterface.takesui1()
    
    local value=simUI.getEditValue(uiMain,16)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takeBui1()
    
    local value=simUI.getEditValue(uiMain,17)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takebui1()
    
    local value=simUI.getEditValue(uiMain,18)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takebbui1()
    
    local value=simUI.getEditValue(uiMain,19)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takeHui1()
    
    local value=simUI.getEditValue(uiMain,20)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takehui1()
    
    local value=simUI.getEditValue(uiMain,21)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takehhui1()
    
    local value=simUI.getEditValue(uiMain,22)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takedui1()
    
    local value=simUI.getEditValue(uiMain,23)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takepui1()
    
    local value=simUI.getEditValue(uiMain,24)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takeAngleui1()
    
    local value=simUI.getEditValue(uiMain,25)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.takehfui1()
    
    local value=simUI.getEditValue(uiMain,26)
    if value ~= '' then
        value = tonumber(value)
        
        return value
    end
    
end

function graphicUserInterface.assFtoP(arrayOfStr)

    local S,s,B,b,bb,H,h,hh,d,p,angle,hf
    local param = {}

    for i=1,#arrayOfStr,1 do
        param[i] = tonumber(arrayOfStr[i])

    end

    return param

end

function graphicUserInterface.buttonSandC()
    
    local nameW = graphicUserInterface.takeFilenameW()
    local nameR = graphicUserInterface.takeFilenameR()

    

    local xml1 = [[
            <ui closeable="false" title="Control position interface" resizable="true">

                <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Prima prova V-REP Python\\Robot_Line_Following\\sectioned_closure.png" width="610" height="320"/>
                <tabs>

                <tab title="Customized closure">
                    <group flat="true" layout="vbox">
                        <group flat="false" layout="vbox">

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 1.1" checked="false" id="92" on-change="graphicUser.checkCB_1_1_1"/>
                                <checkbox text="Position 1.2" checked="false" id="93" on-change="graphicUser.checkCB_1_1_2"/>
                            </group>

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 1.3" checked="false" id="94" on-change="graphicUser.checkCB_1_1_3"/>
                                <checkbox text="Position 1.4" checked="false" id="95" on-change="graphicUser.checkCB_1_1_4"/>                          
                            </group>
                             
                        </group>
                            <label text="Frist group of positions"/>

                            <group flat="false" layout="vbox">

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 2.1" checked="false" id="96" on-change="graphicUser.checkCB_1_2_1"/>
                                <checkbox text="Position 2.2" checked="false" id="97" on-change="graphicUser.checkCB_1_2_2"/>
                                <checkbox text="Position 2.3" checked="false" id="98" on-change="graphicUser.checkCB_1_2_3"/>
                            </group>

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 2.4" checked="false" id="99" on-change="graphicUser.checkCB_1_2_4"/>
                                <checkbox text="Position 2.5" checked="false" id="100" on-change="graphicUser.checkCB_1_2_5"/>
                                <checkbox text="Position 2.6" checked="false" id="101" on-change="graphicUser.checkCB_1_2_6"/>
                            </group>
    
                            <group flat="false" layout="hbox">
                                <checkbox text="Position 2.7" checked="false" id="102" on-change="graphicUser.checkCB_1_2_7"/>
                                <checkbox text="Position 2.8" checked="false" id="103" on-change="graphicUser.checkCB_1_2_8"/>
                                <checkbox text="Position 2.9" checked="false" id="104" on-change="graphicUser.checkCB_1_2_9"/>
                            </group>
 
                        </group>
                            <label text="Second group of positions"/>
                        
                    </group>
                    <spinbox prefix="Number of closures: " minimum="1" maximum="15" step="1" on-change="graphicUser.spinboxCB"/> 
                    <button text="Generation" on-click="graphicUser.buttonCNW"/>

                
                    </tab>
                </tabs>
            </ui>
        ]]

        

    if nameW ~= nil then --Creazione del file del nuovo tappo

        local S = graphicUserInterface.takeS()
        
        if S == nil then
            strS = "S "
            SMiss = true
        else
            strS = ""
            SMiss = false
        end

        local s = graphicUserInterface.takes()

        if s == nil then
            strs = "s "
            sMiss = true
        else
            strs = ""
            sMiss = false
        end

        local B = graphicUserInterface.takeB()
        
        if B == nil then
            strB = "B "
            BMiss = true
        else
            strB = ""
            BMiss = false
        end

        local b = graphicUserInterface.takeb()

        if b == nil then
            strb = "b "
            bMiss = true
        else
            strb = ""
            bMiss = false
        end

        local bb = graphicUserInterface.takebb()

        if bb == nil then
            strbb = "bb "
            bbMiss = true
        else
            strbb = ""
            bbMiss = false
        end

        local H = graphicUserInterface.takeH()

        if H == nil then
            strH = "H "
            HMiss = true
        else
            strH = ""
            HMiss = false
        end

        local h = graphicUserInterface.takeh()

        if h == nil then
            strh = "h "
            hMiss = true
        else
            strh = ""
            hMiss = false
        end

        local hh = graphicUserInterface.takehh()

        if hh == nil then
            strhh = "hh "
            hhMiss = true
        else
            strhh = ""
            hhMiss = false
        end

        local d = graphicUserInterface.taked()

        if d == nil then
            strd = "d "
            dMiss = true
        else
            strd = ""
            dMiss = false
        end

        local p = graphicUserInterface.takep()
        local angle = graphicUserInterface.takeAngle()

        if p~=nil or angle ~= nil then
            if  (angle == nil)  then
                if d ~= nil then
                    angle = math.deg(math.atan(p/math.pi*d))
                end 
            else
                if d ~= nil then
                    p = math.pi*d*math.tan(angle)
                end
            end
            
            strpORa = ""
            pOrangleMiss = false
        
        else

            strpORa = "P or angle "
            pOrangleMiss = true
            
        end

        local hf = graphicUserInterface.takehf()

        if hf == nil then
            strhf = "hf "
            hfMiss = true
        else
            strhf = ""
            hfMiss = false
        end
        
        if (SMiss==true) or (sMiss==true) or (BMiss==true) or (bMiss==true) or (bbMiss==true) or (HMiss==true) or (hMiss==true) or (hhMiss==true) or (dMiss==true) or (pOrangleMiss==true) or (hfMiss==true)  then
            str="Missing of these parameter: "..strS..strs..strB..strb..strbb..strH..strh..strhh..strd..strpORa..strhf
            sim.displayDialog("GUI report",str,sim.dlgstyle_ok,false,"")
        else

            local file = io.open("C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Prima prova V-REP Python\\Robot_Line_Following\\nuovi_tappi\\"..nameW, "w")
            file:write(S.."\n"..s.."\n"..B.."\n"..b.."\n"..bb.."\n"..H.."\n"..h.."\n"..hh.."\n"..d.."\n"..p.."\n"..angle.."\n"..hf)
            file:close()

            ui1 = simUI.create(xml1)

        end
    elseif nameR ~=nil then --Lettura del file già creato e salvataggio dei parametri

        local file = io.open("C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Prima prova V-REP Python\\Robot_Line_Following\\nuovi_tappi\\"..nameR, "r")

        if not file then 
            return nil
        end
        
        local lines = {}

        for line in file:lines(file) do 
            lines[#lines + 1] = line
        end

        file:close()

        local dimensionsClosure=graphicUserInterface.assFtoP(lines) --S,s,B,b,bb,H,h,hh,d,p,angle,hf

        print(dimensionsClosure)

        local xml2 = string.format([[
            <ui closeable="true" title="Control position interface of: %s file" resizable="true">

                <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Prima prova V-REP Python\\Robot_Line_Following\\sectioned_closure.png" width="610" height="320"/>
                <tabs>

                <tab title="Customized closure">
                    <group flat="true" layout="vbox">
                        <group flat="false" layout="vbox">
                        <label text="Parametri del file:"/>
                        <label text="S:%0.2f, s: %0.2f, B: %0.2f, b: %0.2f, bb: %0.2f, H: %0.2f, h: %0.2f, hh: %0.2f, d: %0.2f, p: %0.2f, angle: %f, hf: %0.2f"/>
                            <group flat="false" layout="hbox">
                                <checkbox text="Position 1.1" checked="false" id="105" on-change="graphicUser.checkCB_1_1_1"/>
                                <checkbox text="Position 1.2" checked="false" id="106" on-change="graphicUser.checkCB_1_1_2"/>
                            </group>

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 1.3" checked="false" id="107" on-change="graphicUser.checkCB_1_1_3"/>
                                <checkbox text="Position 1.4" checked="false" id="108" on-change="graphicUser.checkCB_1_1_4"/>                          
                            </group>
                             
                        </group>
                            <label text="Frist group of positions"/>

                            <group flat="false" layout="vbox">

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 2.1" checked="false" id="109" on-change="graphicUser.checkCB_1_2_1"/>
                                <checkbox text="Position 2.2" checked="false" id="110" on-change="graphicUser.checkCB_1_2_2"/>
                                <checkbox text="Position 2.3" checked="false" id="111" on-change="graphicUser.checkCB_1_2_3"/>
                            </group>

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 2.4" checked="false" id="112" on-change="graphicUser.checkCB_1_2_4"/>
                                <checkbox text="Position 2.5" checked="false" id="113" on-change="graphicUser.checkCB_1_2_5"/>
                                <checkbox text="Position 2.6" checked="false" id="114" on-change="graphicUser.checkCB_1_2_6"/>
                            </group>
    
                            <group flat="false" layout="hbox">
                                <checkbox text="Position 2.7" checked="false" id="115" on-change="graphicUser.checkCB_1_2_7"/>
                                <checkbox text="Position 2.8" checked="false" id="116" on-change="graphicUser.checkCB_1_2_8"/>
                                <checkbox text="Position 2.9" checked="false" id="117" on-change="graphicUser.checkCB_1_2_9"/>
                            </group>
 
                        </group>
                            <label text="Second group of positions"/>
                        
                    </group>
                    <spinbox prefix="Number of closures: " minimum="1" maximum="15" step="1" on-change="graphicUser.spinboxCB"/> 
                    <button text="Generation" on-click="graphicUser.buttonCNR"/>

                
                    </tab>
                </tabs>
            </ui>
        ]],nameR,dimensionsClosure[1],dimensionsClosure[2],dimensionsClosure[3],dimensionsClosure[4],dimensionsClosure[5],dimensionsClosure[6],dimensionsClosure[7],dimensionsClosure[8],dimensionsClosure[9],dimensionsClosure[10],dimensionsClosure[11],dimensionsClosure[12])

        ui2 = simUI.create(xml2)

    else
 
        sim.displayDialog("GUI report","Specify one file to create or to read",sim.dlgstyle_ok,false,"")

    end

end

function graphicUserInterface.buttonC()

    local xml3 = [[
            <ui closeable="true" title="Control position interface" resizable="true">

                <image enabled="true" file="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Prima prova V-REP Python\\Robot_Line_Following\\sectioned_closure.png" width="610" height="320"/>
                <tabs>

                <tab title="Closure on the fly">
                    <group flat="true" layout="vbox">
                        <group flat="false" layout="vbox">

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 1.1" checked="false" id="27" on-change="graphicUser.checkCB_5_1_1"/>
                                <checkbox text="Position 1.2" checked="false" id="28" on-change="graphicUser.checkCB_5_1_2"/>
                            </group>

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 1.3" checked="false" id="29" on-change="graphicUser.checkCB_5_1_3"/>
                                <checkbox text="Position 1.4" checked="false" id="30" on-change="graphicUser.checkCB_5_1_4"/>                          
                            </group>
                             
                        </group>
                            <label text="Frist group of positions"/>

                            <group flat="false" layout="vbox">

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 2.1" checked="false" id="31" on-change="graphicUser.checkCB_5_2_1"/>
                                <checkbox text="Position 2.2" checked="false" id="32" on-change="graphicUser.checkCB_5_2_2"/>
                                <checkbox text="Position 2.3" checked="false" id="33" on-change="graphicUser.checkCB_5_2_3"/>
                            </group>

                            <group flat="false" layout="hbox">
                                <checkbox text="Position 2.4" checked="false" id="34" on-change="graphicUser.checkCB_5_2_4"/>
                                <checkbox text="Position 2.5" checked="false" id="35" on-change="graphicUser.checkCB_5_2_5"/>
                                <checkbox text="Position 2.6" checked="false" id="36" on-change="graphicUser.checkCB_5_2_6"/>
                            </group>
    
                            <group flat="false" layout="hbox">
                                <checkbox text="Position 2.7" checked="false" id="37" on-change="graphicUser.checkCB_5_2_7"/>
                                <checkbox text="Position 2.8" checked="false" id="38" on-change="graphicUser.checkCB_5_2_8"/>
                                <checkbox text="Position 2.9" checked="false" id="39" on-change="graphicUser.checkCB_5_2_9"/>
                            </group>
 
                        </group>
                            <label text="Second group of positions"/>
                        
                    </group>
                    <spinbox prefix="Number of closures: " minimum="1" maximum="15" step="1" on-change="graphicUser.spinboxCB"/> 
                    <button text="Generation" on-click="graphicUser.buttonCustomizedB1"/>

                
                    </tab>
                </tabs>
            </ui>
        ]]
        
        ui1 = simUI.create(xml3)

end

function graphicUserInterface.spinboxCB(ui_handle, item_id, new_value)
    simAddStatusbarMessage("Spinbox value : "..new_value)
    setNumberOfClosure(new_value)
end

function setNumberOfClosure(c)
    model=sim.getObjectAssociatedWithScript(sim.handle_self)    
    local childScriptHandle=sim.getScriptAssociatedWithObject(model)
    sim.setScriptSimulationParameter(childScriptHandle,'numberOfClosure',tostring(c))
end

function getNumberOfClosure()
    model=sim.getObjectAssociatedWithScript(sim.handle_self)
    local childScriptHandle=sim.getScriptAssociatedWithObject(model)
    local c=sim.getScriptSimulationParameter(childScriptHandle,'numberOfClosure')
    return tonumber(c)
end

--Creare dataBase tappo in modo da poter generare un tappo con le dimensioni date da cad, quindi i valori di grandezze sono ipotizzati, dovranno essere cambiati in base al
--tipo di tappo che genero.

function graphicUserInterface.buttonCNW(ui_handle,item_id)--funzione per la lettura delle posizioni, partendo dalla creazione del tappo ex novo quindi dalla scrittura

    local n=getNumberOfClosure()

    local dimensionsClosure = {}

    dimensionsClosure[1] = graphicUserInterface.takeS()
    dimensionsClosure[2]= graphicUserInterface.takes()
    dimensionsClosure[3] = graphicUserInterface.takeB()
    dimensionsClosure[4] = graphicUserInterface.takeb()
    dimensionsClosure[5] = graphicUserInterface.takebb()
    dimensionsClosure[6] = graphicUserInterface.takeH()
    dimensionsClosure[7] = graphicUserInterface.takeh()
    dimensionsClosure[8] = graphicUserInterface.takehh()
    dimensionsClosure[9] = graphicUserInterface.taked()
    dimensionsClosure[10] = graphicUserInterface.takep()
    dimensionsClosure[11] = graphicUserInterface.takeAngle()
    dimensionsClosure[12] = graphicUserInterface.takehf()

    local innerPositions = {}
    local pos1 = {}
    local pos2 = {}

    for i=1,4,1 do
        pos1[i]=simUI.getCheckboxValue(ui1,91+i)
        print(pos1[i])
    end
    for i=1,9,1 do
        pos2[i]=simUI.getCheckboxValue(ui1,95+i)
        print(pos2[i])
    end

    for i=1,4,1 do
        innerPositions[i] = pos1[i] --positions array should be global define in the main program
    end
    for i=1,9,1 do
        innerPositions[i+4] = pos2[i]
    end
    

    local dataPositions=sim.packFloatTable(innerPositions)
    sim.setStringSignal('positions',dataPositions)

    local dataDimensions=sim.packFloatTable(dimensionsClosure)
    sim.setStringSignal('dimensionsClosure',dataDimensions)

    height,done=user.closureGenerationRectangular2(dimensionsClosure[3],15,dimensionsClosure[1],dimensionsClosure[6]-dimensionsClosure[1],n,0.8,resettableCount,numberOfLayers)--bigDiameter,numberOfCuboid,heightOftheBase,heightOftheCylinder
    
    resettableCount=resettableCount+n
    if height*(0.05+0.05)>0.9 then
        resettableCount=0
        numberOfLayers=numberOfLayers+1
    end

end

function graphicUserInterface.buttonCNR(ui_handle,item_id)--funzione per la lettura delle posizioni, partendo dalla lettura del file già creato

    local URHandle=sim.getObjectHandle('UR10')
    cuboidScriptHandle=sim.getScriptAssociatedWithObject(URHandle)

    local n=getNumberOfClosure()

    local nameR = graphicUserInterface.takeFilenameR()

    local file = io.open("C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\Prima prova V-REP Python\\Robot_Line_Following\\nuovi_tappi\\"..nameR, "r")

    if not file then 
        return nil
    end
        
    local lines = {}

    for line in file:lines(file) do 
        lines[#lines + 1] = line
    end

    file:close()

    local dimensionsClosure = {}

    dimensionsClosure=graphicUserInterface.assFtoP(lines) --S,s,B,b,bb,H,h,hh,d,p,angle,hf

    local innerPositions = {}
    local pos1 = {}
    local pos2 = {}

    for i=1,4,1 do
        pos1[i]=simUI.getCheckboxValue(ui2,104+i)
        print(pos1[i])
    end
    for i=1,9,1 do
        pos2[i]=simUI.getCheckboxValue(ui2,108+i)
        print(pos2[i])
    end

    for i=1,4,1 do
        innerPositions[i] = pos1[i] --positions array should be global define in the main program
    end
    for i=1,9,1 do
        innerPositions[i+4] = pos2[i]
    end
    

    local dataPositions=sim.packFloatTable(innerPositions)
    sim.setStringSignal('positions',dataPositions)

    local dataDimensions=sim.packFloatTable(dimensionsClosure)
    sim.setStringSignal('dimensionsClosure',dataDimensions)

    sim.setScriptSimulationParameter(sim.handle_self,'generationDone',1)

    height,done=user.closureGenerationRectangular2(dimensionsClosure[3],15,dimensionsClosure[1],dimensionsClosure[6]-dimensionsClosure[1],n,0.8,resettableCount,numberOfLayers)
    
    resettableCount=resettableCount+n
    if height*(0.05+0.05)>0.9 then
        resettableCount=0
        numberOfLayers=numberOfLayers+1
    end

end

function graphicUserInterface.buttonCustomizedB1(ui_handle, item_id)--funzione per la lettura delle posizioni, partendo dalla creazione del tappo on the fly

    local n = getNumberOfClosure()
    
    local dimensionsClosure = {}

    dimensionsClosure[1]  = graphicUserInterface.takeSui1()
    dimensionsClosure[2] = graphicUserInterface.takesui1()
    dimensionsClosure[3] = graphicUserInterface.takeBui1()
    dimensionsClosure[4] = graphicUserInterface.takebui1()
    dimensionsClosure[5] = graphicUserInterface.takebbui1()
    dimensionsClosure[6] = graphicUserInterface.takeHui1()
    dimensionsClosure[7] = graphicUserInterface.takehui1()
    dimensionsClosure[8] = graphicUserInterface.takehhui1()
    dimensionsClosure[9] = graphicUserInterface.takedui1()
    dimensionsClosure[10] = graphicUserInterface.takepui1()
    dimensionsClosure[11] = graphicUserInterface.takeAngleui1()
    dimensionsClosure[12] = graphicUserInterface.takehfui1()

    for i=1,12,1 do
        if dimensionsClosure[i]==nil then
            dimensionsClosure[i]='emptybox'
        end
    end

    local innerPositions = {}

    local pos1 = {}
    local pos2 = {}

    for i=1,4,1 do
        pos1[i]=simUI.getCheckboxValue(ui1,26+i)
        print(pos1[i])
    end
    for i=1,9,1 do
        pos2[i]=simUI.getCheckboxValue(ui1,30+i)
        print(pos2[i])
    end

    for i=1,4,1 do
        innerPositions[i] = pos1[i] --positions array should be global define in the main program
    end
    for i=1,9,1 do
        innerPositions[i+4] = pos2[i]
    end
    

    local dataPositions=sim.packFloatTable(innerPositions)
    sim.setStringSignal('positions',dataPositions)

    print(dimensionsClosure)

    local dataDimensions=sim.packFloatTable(dimensionsClosure)
    sim.setStringSignal('dimensionsClosure',dataDimensions)

    

    height,done=user.closureGenerationRectangular2(dimensionsClosure[3],15,dimensionsClosure[1],dimensionsClosure[6]-dimensionsClosure[1],n,0.8,resettableCount,numberOfLayers)
    
    resettableCount=resettableCount+n
    if height*(0.05+0.05)>0.9 then
        resettableCount=0
        numberOfLayers=numberOfLayers+1
    end

end

--funzioni per la lettura delle posizioni per gli ultimi tab.

function graphicUserInterface.buttonCB1(ui_handle, item_id)
    
    local n=getNumberOfClosure()
    local path="C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB26CSD11-A8705\\AB26CSD11-A8705.STL"

    local dimensionsClosure = {}

    dimensionsClosure[1]  = 0.01
    dimensionsClosure[2] = 0.01
    dimensionsClosure[3] = 0.05
    dimensionsClosure[4] = 0.03
    dimensionsClosure[5] = 0.0015
    dimensionsClosure[6] = 0.02
    dimensionsClosure[7] = 0.001
    dimensionsClosure[8] = 0.0015
    dimensionsClosure[9] = 0.025
    dimensionsClosure[10] = 0.001
    dimensionsClosure[11] = 30
    dimensionsClosure[12] = 0.0013

    local innerPositions = {}
    local pos1 = {}
    local pos2 = {}
    
    for i=1,4,1 do
        pos1[i]=simUI.getCheckboxValue(uiMain,39+i)
        print(pos1[i])
    end
    for i=1,9,1 do
        pos2[i]=simUI.getCheckboxValue(uiMain,43+i)
        print(pos2[i])
    end
    
    for i=1,4,1 do
        innerPositions[i] = pos1[i] --positions array should be global define in the main program
    end
    for i=1,9,1 do
        innerPositions[i+4] = pos2[i]
    end



    local dataPositions=sim.packFloatTable(innerPositions)
    sim.setStringSignal('positions',dataPositions)

    local dataDimensions=sim.packFloatTable(dimensionsClosure)
    sim.setStringSignal('dimensionsClosure',dataDimensions)

    height,done=user.closureGenerationRectangular1(dimensionsClosure[3],0.01,15,dimensionsClosure[1],dimensionsClosure[6]-dimensionsClosure[1],n,0.8,resettableCount,numberOfLayers,path)
    
    resettableCount=resettableCount+n
    if height*(0.05+0.05)>0.9 then
        resettableCount=0
        numberOfLayers=numberOfLayers+1
    end

end

function graphicUserInterface.buttonCB2(ui_handle, item_id)
    
    local n=getNumberOfClosure()
    local path=[[C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB29W36-A8725\\AB29W36-A8725.STL]]

    local dimensionsClosure = {}

    dimensionsClosure[1]  = 0.01
    dimensionsClosure[2] = 0.01
    dimensionsClosure[3] = 0.05
    dimensionsClosure[4] = 0.03
    dimensionsClosure[5] = 0.0015
    dimensionsClosure[6] = 0.02
    dimensionsClosure[7] = 0.001
    dimensionsClosure[8] = 0.0015
    dimensionsClosure[9] = 0.025
    dimensionsClosure[10] = 0.001
    dimensionsClosure[11] = 30
    dimensionsClosure[12] = 0.0013

    local innerPositions = {}
    local pos1 = {}
    local pos2 = {}

    for i=1,4,1 do
        pos1[i]=simUI.getCheckboxValue(uiMain,52+i)
        print(pos1[i])
    end
    for i=1,9,1 do
        pos2[i]=simUI.getCheckboxValue(uiMain,56+i)
        print(pos2[i])
    end

    for i=1,4,1 do
        innerPositions[i] = pos1[i] --positions array should be global define in the main program
    end
    for i=1,9,1 do
        innerPositions[i+4] = pos2[i]
    end

    local dataPositions=sim.packFloatTable(innerPositions)
    sim.setStringSignal('positions',dataPositions)

    local dataDimensions=sim.packFloatTable(dimensionsClosure)
    sim.setStringSignal('dimensionsClosure',dataDimensions)

    height,done=user.closureGenerationRectangular1(dimensionsClosure[3],0.01,15,dimensionsClosure[1],dimensionsClosure[6]-dimensionsClosure[1],n,0.8,resettableCount,numberOfLayers,path)
    resettableCount=resettableCount+n
    if height*(0.05+0.05)>0.9 then
        resettableCount=0
        numberOfLayers=numberOfLayers+1
    end

end

function graphicUserInterface.buttonCB3(ui_handle, item_id)

    local n=getNumberOfClosure()
    local path=[[C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB38HF7-A8723\\AB38HF7-A8723.STL]]

    local dimensionsClosure = {}

    dimensionsClosure[1]  = 0.01
    dimensionsClosure[2] = 0.01
    dimensionsClosure[3] = 0.05
    dimensionsClosure[4] = 0.03
    dimensionsClosure[5] = 0.0015
    dimensionsClosure[6] = 0.02
    dimensionsClosure[7] = 0.001
    dimensionsClosure[8] = 0.0015
    dimensionsClosure[9] = 0.025
    dimensionsClosure[10] = 0.001
    dimensionsClosure[11] = 30
    dimensionsClosure[12] = 0.0013
    
    local innerPositions = {}
    local pos1 = {}
    local pos2 = {}

    for i=1,4,1 do
        pos1[i]=simUI.getCheckboxValue(uiMain,65+i)
        print(pos1[i])
    end
    for i=1,9,1 do
        pos2[i]=simUI.getCheckboxValue(uiMain,69+i)
        print(pos2[i])
    end

    for i=1,4,1 do
        innerPositions[i] = pos1[i] --positions array should be global define in the main program
    end
    for i=1,9,1 do
        innerPositions[i+4] = pos2[i]
    end
    
    local dataPositions=sim.packFloatTable(innerPositions)
    sim.setStringSignal('positions',dataPositions)

    local dataDimensions=sim.packFloatTable(dimensionsClosure)
    sim.setStringSignal('dimensionsClosure',dataDimensions)

    height,done=user.closureGenerationRectangular1(dimensionsClosure[3],0.01,15,dimensionsClosure[1],dimensionsClosure[6]-dimensionsClosure[1],n,0.8,resettableCount,numberOfLayers,path)

    resettableCount=resettableCount+n
    if height*(0.05+0.05)>0.9 then
        resettableCount=0
        numberOfLayers=numberOfLayers+1
    end

end

function graphicUserInterface.buttonCB4(ui_handle, item_id)
    
    local n=getNumberOfClosure()
    local path=[[C:\\Users\\edoar\\Desktop\\University\\Tirocinio\\TirocinioSacmi\\I__disegni_capsule_3d_formato_STL\\AB1881CSD32-A8695\\AB1881CSD32-A8695.STL]]

    local dimensionsClosure = {}

    dimensionsClosure[1]  = 0.01
    dimensionsClosure[2] = 0.01
    dimensionsClosure[3] = 0.05
    dimensionsClosure[4] = 0.03
    dimensionsClosure[5] = 0.0015
    dimensionsClosure[6] = 0.02
    dimensionsClosure[7] = 0.001
    dimensionsClosure[8] = 0.0015
    dimensionsClosure[9] = 0.025
    dimensionsClosure[10] = 0.001
    dimensionsClosure[11] = 30
    dimensionsClosure[12] = 0.0013

    local innerPositions = {}
    local pos1 = {}
    local pos2 = {}

    for i=1,4,1 do
        pos1[i]=simUI.getCheckboxValue(uiMain,78+i)
        print(pos1[i])
    end
    for i=1,9,1 do
        pos2[i]=simUI.getCheckboxValue(uiMain,82+i)
        print(pos2[i])
    end

    for i=1,4,1 do
        innerPositions[i] = pos1[i] --positions array should be global define in the main program
    end
    for i=1,9,1 do
        innerPositions[i+4] = pos2[i]
    end

    local dataPositions=sim.packFloatTable(innerPositions)
    sim.setStringSignal('positions',dataPositions)

    local dataDimensions=sim.packFloatTable(dimensionsClosure)
    sim.setStringSignal('dimensionsClosure',dataDimensions)

    height,done=user.closureGenerationRectangular1(dimensionsClosure[3],0.01,15,dimensionsClosure[1],dimensionsClosure[6]-dimensionsClosure[1],n,0.8,resettableCount,numberOfLayers,path)

    resettableCount=resettableCount+n
    if height*(0.05+0.05)>0.9 then
        resettableCount=0
        numberOfLayers=numberOfLayers+1
    end


end


return graphicUserInterface