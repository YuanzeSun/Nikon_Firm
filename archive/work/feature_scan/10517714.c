/* Address: 0x10517714; body size: 1220 bytes */

void FUN_10517714(int param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  char *pcVar4;
  bool bVar5;
  bool bVar6;
  bool bVar7;
  
  iVar1 = FUN_10618d58();
  if ((iVar1 != 0) && (iVar1 = FUN_10618d5c(0x400000), iVar1 != 0)) {
    FUN_10618d56(0x400000,s_Dump_NVMe_Completion_Entry_Statu_10517ae8,param_1);
  }
  iVar1 = FUN_10618d58();
  if ((iVar1 != 0) && (iVar1 = FUN_10618d5c(0x400000), iVar1 != 0)) {
    FUN_10618d56(0x400000,DAT_10517b18,*(undefined2 *)(param_1 + 10),*(byte *)(param_1 + 0xe) & 1);
  }
  iVar1 = FUN_10618d58();
  if ((iVar1 != 0) && (iVar1 = FUN_10618d5c(0x400000), iVar1 != 0)) {
    FUN_10618d56(0x400000,s_NVMe_Cmd_Execution_Result___10517b1c);
  }
  uVar2 = (*(byte *)(param_1 + 0xf) & 0xf) >> 1;
  if (uVar2 == 0) {
    uVar2 = (*(ushort *)(param_1 + 0xe) & 0x1ff) >> 1;
    if (uVar2 == 0xb) {
      iVar1 = FUN_10618d58();
      bVar5 = true;
      if (iVar1 == 0) {
LAB_1051782a:
        bVar7 = true;
        if (bVar5) goto LAB_105177fe;
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
      }
      else {
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
        if (!bVar7) {
          pcVar4 = s_Invalid_Namespace_or_Format_10517cbc;
          goto LAB_10518038;
        }
      }
      if (!bVar7) {
        pcVar4 = s_Invalid_Command_Opcode_10517b6c;
        goto LAB_10518038;
      }
      goto LAB_105177fe;
    }
    if (0xb < uVar2) {
      if (uVar2 != 0x11) {
        if (uVar2 < 0x12) {
          uVar3 = uVar2 - 0xc;
          bVar5 = true;
          switch(uVar2) {
          case 0xc:
            iVar1 = FUN_10618d58();
            bVar7 = true;
            if (iVar1 == 0) goto LAB_10517840;
            iVar1 = FUN_10618d5c(0x400000);
            bVar7 = iVar1 == 0;
            goto LAB_10517936;
          case 0xd:
            goto switchD_105177de_caseD_d;
          case 0xe:
            iVar1 = FUN_10618d58();
            bVar7 = iVar1 == 0;
            if (!bVar7) {
              iVar1 = FUN_10618d5c(0x400000);
              bVar7 = iVar1 == 0;
LAB_10517962:
              if (!bVar7) {
                pcVar4 = s_Invalid_Number_of_SGL_Descriptor_10517d1c;
                goto LAB_10518038;
              }
            }
            goto LAB_10517870;
          case 0xf:
            iVar1 = FUN_10618d58();
            bVar7 = iVar1 == 0;
LAB_1051796e:
            if (!bVar7) {
              iVar1 = FUN_10618d5c(0x400000);
              bVar7 = iVar1 == 0;
              goto LAB_10517978;
            }
            goto LAB_1051787a;
          case 0x10:
            iVar1 = FUN_10618d58();
            bVar5 = iVar1 == 0;
            goto LAB_10517984;
          default:
            goto switchD_105177c0_default;
          }
        }
        if (uVar2 == 0x80) {
          iVar1 = FUN_10618d58();
          bVar7 = iVar1 == 0;
          goto LAB_105179b0;
        }
        if (uVar2 == 0x81) {
          iVar1 = FUN_10618d58();
          bVar5 = iVar1 == 0;
          goto LAB_105179c6;
        }
        if (uVar2 == 0x82) {
          iVar1 = FUN_10618d58();
          bVar5 = iVar1 == 0;
          goto LAB_105179dc;
        }
        bVar5 = uVar2 == 0x83;
        if (!bVar5) goto LAB_10517786;
        iVar1 = FUN_10618d58();
        bVar7 = iVar1 == 0;
        goto LAB_105177fe;
      }
      iVar1 = FUN_10618d58();
      bVar5 = iVar1 == 0;
LAB_1051799a:
      bVar7 = true;
      if (!bVar5) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar5 = iVar1 == 0;
LAB_105179a4:
        if (!bVar5) {
          pcVar4 = s_SGL_Descriptor_Type_Invalid_10517d7c;
          goto LAB_10518038;
        }
        goto LAB_105178b8;
      }
      goto LAB_105178a6;
    }
    bVar5 = true;
    uVar3 = uVar2;
    switch(uVar2) {
    case 0:
      iVar1 = FUN_10618d58();
      bVar7 = iVar1 == 0;
LAB_10517814:
      if (!bVar7) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar5 = iVar1 == 0;
        goto LAB_1051781e;
      }
      break;
    case 1:
      iVar1 = FUN_10618d58();
      bVar5 = iVar1 == 0;
      goto LAB_1051782a;
    case 2:
      iVar1 = FUN_10618d58();
      bVar7 = iVar1 == 0;
LAB_10517840:
      if (!bVar7) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
LAB_1051784a:
        if (!bVar7) {
          pcVar4 = s_Invalid_Field_in_Command_10517b84;
          goto LAB_10518038;
        }
      }
      break;
    case 3:
      iVar1 = FUN_10618d58();
      bVar7 = iVar1 == 0;
LAB_10517856:
      if (!bVar7) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
LAB_10517860:
        if (!bVar7) {
          pcVar4 = s_Command_ID_Conflict_10517ba0;
          goto LAB_10518038;
        }
      }
      break;
    case 4:
      iVar1 = FUN_10618d58();
      bVar7 = iVar1 == 0;
LAB_10517870:
      if (!bVar7) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
LAB_1051787a:
        if (!bVar7) {
          pcVar4 = s_Data_Transfer_Error_10517bb8;
          goto LAB_10518038;
        }
      }
      break;
    case 5:
      iVar1 = FUN_10618d58();
      bVar7 = iVar1 == 0;
LAB_10517886:
      if (!bVar7) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
LAB_10517890:
        if (!bVar7) {
          pcVar4 = s_Commands_Aborted_due_to_Power_Lo_10517bd0;
          goto LAB_10518038;
        }
      }
      break;
    case 6:
      iVar1 = FUN_10618d58();
      bVar7 = iVar1 == 0;
      goto LAB_1051789c;
    case 7:
      iVar1 = FUN_10618d58();
      bVar5 = iVar1 == 0;
LAB_105178b8:
      bVar7 = true;
      if (!bVar5) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
LAB_105178c2:
        if (!bVar7) {
          pcVar4 = s_Command_Abort_Requested_10517c1c;
          goto LAB_10518038;
        }
      }
      break;
    case 8:
      iVar1 = FUN_10618d58();
      bVar7 = iVar1 == 0;
LAB_105178ce:
      if (!bVar7) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
LAB_105178d8:
        if (!bVar7) {
          pcVar4 = s_Command_Aborted_due_to_SQ_Deleti_10517c38;
          goto LAB_10518038;
        }
      }
      break;
    case 9:
      iVar1 = FUN_10618d58();
      bVar7 = iVar1 == 0;
LAB_105178ea:
      if (!bVar7) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar5 = iVar1 == 0;
LAB_105178f4:
        bVar6 = true;
        if (bVar5) goto LAB_10517808;
        pcVar4 = s_Command_Aborted_due_to_Failed_Fu_10517c5c;
        goto LAB_10518038;
      }
      break;
    case 10:
      iVar1 = FUN_10618d58();
      bVar7 = true;
      if (iVar1 == 0) goto LAB_10517814;
      iVar1 = FUN_10618d5c(0x400000);
      bVar5 = iVar1 == 0;
      if (!bVar5) {
        pcVar4 = s_Command_Aborted_due_to_Missing_F_10517c8c;
        goto LAB_10518038;
      }
LAB_1051781e:
      bVar7 = true;
      if (!bVar5) {
        pcVar4 = s_Successful_Completion_10517b54;
        goto LAB_10518038;
      }
      break;
    default:
      goto switchD_105177c0_default;
    }
    goto LAB_105177fe;
  }
  if (uVar2 != 1) {
    bVar5 = uVar2 == 2;
LAB_10517786:
    if (!bVar5) {
      return;
    }
    uVar3 = ((*(ushort *)(param_1 + 0xe) & 0x1ff) >> 1) - 0x80;
    bVar5 = 6 < uVar3;
switchD_105177c0_default:
    if (bVar5) {
      return;
    }
                    /* WARNING: Could not recover jumptable at 0x1051779a. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*(code *)(&DAT_1051779e + (uint)*(ushort *)(&DAT_1051779e + uVar3 * 2) * 2))();
    return;
  }
  uVar2 = (*(ushort *)(param_1 + 0xe) & 0x1ff) >> 1;
  if (uVar2 == 10) {
    iVar1 = FUN_10618d58();
    bVar5 = iVar1 == 0;
    if (!bVar5) {
      iVar1 = FUN_10618d5c(0x400000);
      bVar5 = iVar1 == 0;
      if (!bVar5) {
        pcVar4 = s_Invalid_Format_10518258;
        goto LAB_10518038;
      }
    }
    goto LAB_10517e9a;
  }
  if (10 < uVar2) {
    if (uVar2 == 0xf) {
      iVar1 = FUN_10618d58();
      if (iVar1 == 0) {
        return;
      }
      iVar1 = FUN_10618d5c(0x400000);
      if (iVar1 == 0) {
        return;
      }
      pcVar4 = s_Feature_Not_Namespace_Specific_105182d8;
      goto LAB_10518038;
    }
    if (0xf < uVar2) {
      if (uVar2 == 0x10) {
        iVar1 = FUN_10618d58();
        if (iVar1 == 0) {
          return;
        }
        iVar1 = FUN_10618d5c(0x400000);
        if (iVar1 == 0) {
          return;
        }
        pcVar4 = s_Firmware_Application_Requires_NV_105182f8;
        goto LAB_10518038;
      }
      if (uVar2 == 0x80) {
        iVar1 = FUN_10618d58();
        if (iVar1 == 0) {
          return;
        }
        iVar1 = FUN_10618d5c(0x400000);
        if (iVar1 == 0) {
          return;
        }
        pcVar4 = s_Conflicting_Attributes_1051832c;
        goto LAB_10518038;
      }
      if (uVar2 == 0x81) {
        iVar1 = FUN_10618d58();
        if (iVar1 == 0) {
          return;
        }
        iVar1 = FUN_10618d5c(0x400000);
        if (iVar1 == 0) {
          return;
        }
        pcVar4 = s_Invalid_Protection_Information_10518344;
        goto LAB_10518038;
      }
      bVar5 = false;
      if (uVar2 == 0x82) {
        iVar1 = FUN_10618d58();
        bVar7 = true;
        if (iVar1 == 0) goto LAB_10517962;
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
        if (!bVar7) {
          pcVar4 = s_Attempted_Write_to_Read_Only_Ran_10517df4;
          goto LAB_10518038;
        }
        goto LAB_1051796e;
      }
LAB_10517a22:
      if (!bVar5) {
LAB_10518042:
        return;
      }
      iVar1 = FUN_10618d58();
      bVar7 = true;
      if (iVar1 != 0) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar5 = iVar1 == 0;
        if (!bVar5) {
          pcVar4 = s_Feature_Not_Changeable_10517ddc;
          goto LAB_10518038;
        }
        goto LAB_10517942;
      }
LAB_10517936:
      if (!bVar7) {
        pcVar4 = s_Command_Sequence_Error_10517cdc;
        goto LAB_10518038;
      }
      goto LAB_1051784a;
    }
    if (uVar2 == 0xb) {
      iVar1 = FUN_10618d58();
      bVar5 = iVar1 == 0;
      if (!bVar5) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar5 = iVar1 == 0;
        if (!bVar5) {
          pcVar4 = s_Firmware_Application_Requires_Co_10518268;
          goto LAB_10518038;
        }
      }
    }
    else if (uVar2 == 0xc) {
      iVar1 = FUN_10618d58();
      bVar5 = iVar1 == 0;
      if (!bVar5) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar5 = iVar1 == 0;
        if (!bVar5) {
          pcVar4 = s_Invalid_Queue_Deletion_1051829c;
          goto LAB_10518038;
        }
      }
    }
    else {
      if (uVar2 != 0xd) {
        bVar5 = uVar2 == 0xe;
        goto LAB_10517a22;
      }
      iVar1 = FUN_10618d58();
      bVar5 = iVar1 == 0;
      if (!bVar5) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar5 = iVar1 == 0;
        if (!bVar5) {
          pcVar4 = s_Feature_Identifier_Not_Saveable_105182b4;
          goto LAB_10518038;
        }
      }
    }
    goto LAB_10517e9a;
  }
  switch(uVar2) {
  case 0:
    iVar1 = FUN_10618d58();
    bVar7 = true;
    if (iVar1 == 0) {
LAB_10517978:
      if (!bVar7) {
        pcVar4 = s_Data_SGL_Length_Invalid_10517d40;
        goto LAB_10518038;
      }
      goto LAB_10517886;
    }
    iVar1 = FUN_10618d5c(0x400000);
    bVar5 = iVar1 == 0;
    if (!bVar5) {
      pcVar4 = s_Completion_Queue_Invalid_10517e18;
      goto LAB_10518038;
    }
LAB_10517984:
    bVar7 = true;
    if (bVar5) goto LAB_10517890;
    iVar1 = FUN_10618d5c(0x400000);
    bVar5 = iVar1 == 0;
    goto LAB_1051798e;
  case 1:
    iVar1 = FUN_10618d58();
    bVar5 = true;
    if (iVar1 != 0) {
      iVar1 = FUN_10618d5c(0x400000);
      bVar5 = iVar1 == 0;
      if (!bVar5) {
        pcVar4 = s_Invalid_Queue_Identifier_10517e34;
        goto LAB_10518038;
      }
      goto LAB_1051799a;
    }
LAB_1051798e:
    bVar7 = true;
    if (bVar5) {
LAB_1051789c:
      if (!bVar7) {
        iVar1 = FUN_10618d5c(0x400000);
        bVar7 = iVar1 == 0;
LAB_105178a6:
        if (!bVar7) {
          pcVar4 = s_Internal_Device_Error_10517c04;
          goto LAB_10518038;
        }
      }
LAB_105177fe:
      do {
        if (bVar7) {
          return;
        }
        iVar1 = FUN_10618d5c(0x400000);
        bVar6 = iVar1 == 0;
LAB_10517808:
        bVar7 = true;
      } while (bVar6);
      pcVar4 = s_Reservation_Conflict_10517b3c;
    }
    else {
      pcVar4 = s_Metadata_SGL_Length_Invalid_10517d5c;
    }
    goto LAB_10518038;
  case 2:
    iVar1 = FUN_10618d58();
    bVar5 = true;
    if (iVar1 == 0) goto LAB_105179a4;
    iVar1 = FUN_10618d5c(0x400000);
    bVar7 = iVar1 == 0;
    if (!bVar7) {
      pcVar4 = s_Maximum_Queue_Size_Exceeded_10517e50;
      goto LAB_10518038;
    }
LAB_105179b0:
    if (!bVar7) {
      iVar1 = FUN_10618d5c(0x400000);
      bVar7 = iVar1 == 0;
      goto LAB_105179ba;
    }
    goto LAB_105178c2;
  case 3:
    iVar1 = FUN_10618d58();
    bVar7 = true;
    if (iVar1 == 0) {
LAB_105179ba:
      if (!bVar7) {
        pcVar4 = s_LBA_Out_of_Range_10517d9c;
        goto LAB_10518038;
      }
      goto LAB_105178ce;
    }
    iVar1 = FUN_10618d5c(0x400000);
    bVar5 = iVar1 == 0;
    if (!bVar5) {
      pcVar4 = s_Abort_Command_Limit_Exceeded_10517e70;
      goto LAB_10518038;
    }
LAB_105179c6:
    bVar7 = true;
    if (!bVar5) {
      iVar1 = FUN_10618d5c(0x400000);
      bVar7 = iVar1 == 0;
      goto LAB_105179d0;
    }
    goto LAB_105178d8;
  default:
    goto LAB_10518042;
  case 5:
    iVar1 = FUN_10618d58();
    bVar7 = true;
    if (iVar1 == 0) {
LAB_105179d0:
      if (!bVar7) {
        pcVar4 = s_Capacity_Exceeded_10517db0;
        goto LAB_10518038;
      }
      goto LAB_105178ea;
    }
    iVar1 = FUN_10618d5c(0x400000);
    bVar5 = true;
    if (iVar1 != 0) {
      pcVar4 = s_Asynchronous_Event_Request_Limit_105181cc;
      goto LAB_10518038;
    }
LAB_105179dc:
    bVar7 = true;
    if (bVar5) goto LAB_105178ea;
    iVar1 = FUN_10618d5c(0x400000);
    bVar5 = iVar1 == 0;
    if (!bVar5) {
      pcVar4 = s_Namespace_Not_Ready_10517dc4;
      goto LAB_10518038;
    }
    goto LAB_105178f4;
  case 6:
    iVar1 = FUN_10618d58();
    bVar5 = iVar1 == 0;
    break;
  case 7:
    iVar1 = FUN_10618d58();
    bVar5 = iVar1 == 0;
    if (!bVar5) {
      iVar1 = FUN_10618d5c(0x400000);
      bVar5 = iVar1 == 0;
      if (!bVar5) {
        pcVar4 = s_Invalid_Firmware_Image_10518210;
        goto LAB_10518038;
      }
    }
    break;
  case 8:
    iVar1 = FUN_10618d58();
    bVar5 = iVar1 == 0;
    if (!bVar5) {
      iVar1 = FUN_10618d5c(0x400000);
      bVar5 = iVar1 == 0;
      if (!bVar5) {
        pcVar4 = s_Invalid_Interrupt_Vector_10518228;
        goto LAB_10518038;
      }
    }
    break;
  case 9:
    iVar1 = FUN_10618d58();
    bVar5 = iVar1 == 0;
    if (!bVar5) {
      iVar1 = FUN_10618d5c(0x400000);
      bVar5 = iVar1 == 0;
      if (!bVar5) {
        pcVar4 = s_Invalid_Log_Page_10518244;
        goto LAB_10518038;
      }
    }
  }
LAB_10517e9a:
  do {
    if (bVar5) {
      return;
    }
    iVar1 = FUN_10618d5c(0x400000);
    bVar5 = true;
  } while (iVar1 == 0);
  pcVar4 = s_Invalid_Firmware_Slot_105181f8;
LAB_10518038:
  FUN_10618d56(0x400000,pcVar4);
  return;
switchD_105177de_caseD_d:
  iVar1 = FUN_10618d58();
  bVar5 = iVar1 == 0;
LAB_10517942:
  bVar7 = true;
  if (bVar5) goto LAB_10517856;
  iVar1 = FUN_10618d5c(0x400000);
  bVar7 = iVar1 == 0;
  if (!bVar7) {
    pcVar4 = s_Invalid_SGL_Last_Segment_Descrip_10517cf4;
    goto LAB_10518038;
  }
  goto LAB_10517860;
}



