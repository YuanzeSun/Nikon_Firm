/* Original Ghidra pseudocode, not compilable C. Some tail calls have inferred or missing arguments.

Verified data records:
0x11990f14: type 2, pattern pointer 0x120b717c (EG1850??.BIN), availability callback 0x1039d207.
0x11990f24: type 4, pattern pointer 0x120b722c (Z6_2_???.BIN).
0x119f4bb8: command 0xf032, validation 0x104b5387, handler 0x104b5489.
Thumb function pointers have their low bit set.

Machine-code checks: see update_route_verification.json and outer_algorithm_verification.json.
No hardware operations were performed.
*/

/* Address: 0x10704e68; body size: 384 bytes */

void FUN_10704e68(int param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  
  FUN_10704ba4();
  iVar3 = DAT_10705264;
  if (*(int *)(DAT_10705264 + 0x54) != 0) {
    iVar2 = FUN_1063f18e();
    if (iVar2 != 1) {
      FUN_1063bb9a(param_1,0x20c2);
    }
    *(undefined4 *)(iVar3 + 0x54) = 0;
  }
  iVar3 = FUN_10704ae6();
  piVar1 = DAT_10705268;
  if (iVar3 == 0) {
    iVar3 = FUN_1063fdc6(0,DAT_10705268);
    if (iVar3 == 0) {
      *piVar1 = 0;
    }
    uVar4 = 1;
    do {
      if (piVar1[uVar4 * 5 + 4] != 0) {
        FUN_1063fdf4((char)piVar1[uVar4 * 5 + 1]);
        break;
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < 0x13);
  }
  FUN_10704ad6(0);
  uVar4 = FUN_1063bb6e(param_1,0x20c3);
  uVar5 = FUN_1063bb6e(param_1,0x2154);
  if ((uVar4 == 0xffffffff) || (uVar5 == 0xffffffff)) goto LAB_10704f6e;
  uVar6 = FUN_10637876(*(undefined4 *)(param_1 + 0x24),1,uVar4 & 0xffff);
  uVar7 = FUN_10637876(*(undefined4 *)(param_1 + 0x24),1,uVar5 & 0xffff);
  iVar3 = thunk_FUN_1048717a(0x20c3,*(undefined4 *)(param_1 + 0xc));
  if (iVar3 == 0) {
    thunk_FUN_1048716a(*(undefined4 *)(param_1 + 0xc),uVar6);
  }
  iVar3 = thunk_FUN_1048717a(0x2154,*(undefined4 *)(param_1 + 0xc));
  if (iVar3 == 0) {
    thunk_FUN_1048716a(*(undefined4 *)(param_1 + 0xc),uVar7);
  }
  iVar3 = FUN_10635770(0,DAT_10705268);
  if ((iVar3 == 0) || (iVar3 = FUN_10704a92(DAT_10705268), iVar3 == 0)) {
    uVar8 = 0;
LAB_10704f54:
    FUN_1063940a(uVar6,uVar8);
    uVar6 = 0;
  }
  else {
    if (iVar3 == 1) {
LAB_10704f52:
      uVar8 = 1;
      goto LAB_10704f54;
    }
    if (iVar3 != 2) {
      if (iVar3 != 3) goto LAB_10704f6e;
      goto LAB_10704f52;
    }
    FUN_1063940a(uVar6,0);
    uVar6 = 1;
  }
  FUN_1063940a(uVar7,uVar6);
LAB_10704f6e:
  iVar3 = 0;
  if (*piVar1 != 0) {
    uVar4 = 1;
    do {
      if (((piVar1[uVar4 * 5 + 3] != 0) && (piVar1[uVar4 * 5 + 2] != 0)) &&
         (iVar2 = FUN_10704a72((char)piVar1[uVar4 * 5 + 1]), iVar2 != 0)) {
        iVar3 = iVar3 + 1;
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < 0x13);
  }
  uVar4 = FUN_1063bb6e(param_1,0x2152);
  if (uVar4 != 0xffffffff) {
    uVar6 = FUN_10637876(*(undefined4 *)(param_1 + 0x24),1,uVar4 & 0xffff);
    if (iVar3 == 0) {
      FUN_1063940a(uVar6,0);
      return;
    }
    FUN_1063940a(uVar6,1);
    FUN_10620cce(2,0x2df);
    iVar3 = FUN_10704a5e();
    if (iVar3 == 0) {
      FUN_1063df32(param_1,0x2152,1);
      return;
    }
  }
  return;
}




/* Address: 0x1063fdc6; body size: 348 bytes */

int FUN_1063fdc6(uint param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  
  FUN_106316aa(0x5a,param_1,0,0,0);
  FUN_1035d2dc(param_2,0x180);
  iVar3 = DAT_1039ffc8;
  if ((0x12 < param_1) || (param_2 == (undefined4 *)0x0)) {
    return 0;
  }
  iVar8 = 0;
  if ((((((param_1 == 0) || (param_1 == 2)) || (param_1 == 3)) ||
       (((param_1 == 4 || (param_1 == 6)) || ((param_1 == 7 || ((param_1 == 8 || (param_1 == 9))))))
       )) || (param_1 == 0xc)) ||
     ((((param_1 == 0xd || (param_1 == 0xe)) || (param_1 == 0x10)) ||
      (iVar5 = iVar8, param_1 == 0x12)))) {
    FUN_1039f61e();
    uVar6 = 0;
    FUN_1035d2dc(param_2,0x180);
    if (param_1 == 0) {
      *param_2 = 0x13;
    }
    else {
      *param_2 = 1;
    }
    do {
      uVar7 = uVar6 + 1;
      param_2[uVar6 * 5 + 5] = 1;
      uVar6 = uVar7;
    } while (uVar7 < 0x13);
    FUN_1039ceec();
    iVar4 = FUN_1039fd48();
    iVar1 = DAT_1039ffb4;
    iVar5 = 0;
    if (iVar4 != 0) {
      *(undefined4 *)(DAT_1039ffb4 + 0x4c) = 0;
      *(undefined4 *)(iVar1 + 0x60) = 0;
      FUN_1050c652(*(undefined4 *)(iVar1 + 0x5c));
      uVar6 = 0;
      iVar4 = DAT_1039ffc8 + 4;
      do {
        *(char *)(iVar1 + 2) = (char)param_1;
        uVar2 = DAT_1039ffbc;
        *(uint *)(iVar1 + 0x70) = uVar6;
        FUN_103f8e26(uVar2,0x100);
        iVar5 = FUN_1039f680(uVar6,DAT_1039ffbc);
        if (iVar5 != 0) {
          iVar5 = iVar8;
          if (0x31 < *(int *)(iVar1 + 0x60)) break;
          iVar8 = FUN_104d6a36(DAT_1039ffbc,0x27,DAT_1039ffcc,1);
          if ((iVar8 != iVar4) && (iVar8 != iVar3)) {
            iVar5 = 0;
            goto LAB_1039fe92;
          }
          iVar8 = 1;
        }
        uVar6 = uVar6 + 1;
        iVar5 = iVar8;
      } while (uVar6 < 2);
      if (iVar5 != 0) {
        FUN_1039fb24(param_1,param_2);
        iVar3 = DAT_1039ffc4;
        iVar8 = 0;
        do {
          iVar4 = FUN_103f9aaa(iVar3 + iVar8 * 0x1cc);
          if (iVar4 != 0) {
            iVar4 = 2;
            do {
              iVar4 = iVar4 + 1;
            } while (iVar4 < 5);
            iVar4 = 2;
            do {
              iVar4 = iVar4 + 1;
            } while (iVar4 < 5);
          }
          iVar8 = iVar8 + 1;
        } while (iVar8 < 0x13);
      }
LAB_1039fe92:
      FUN_1050c6ba(*(undefined4 *)(iVar1 + 0x5c));
      FUN_1039fd2a();
    }
  }
  return iVar5;
}




/* Address: 0x1039fb24; body size: 518 bytes */

/* WARNING: Type propagation algorithm not settling */

void FUN_1039fb24(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int local_78 [9];
  byte local_54 [16];
  int local_44;
  int local_40;
  uint local_30 [3];
  
  iVar2 = DAT_1039ffb8;
  iVar1 = DAT_1039ffb4;
  local_78[0] = 0;
  iVar7 = 0;
  local_78[1] = 0;
  local_78[2] = 0;
  local_78[3] = 0;
  local_78[4] = 0;
  local_78[5] = 0;
  local_78[6] = 0;
  local_78[7] = 0;
  local_78[8] = 0;
  local_54[0] = 0;
  do {
    if (*(int *)(iVar1 + 0x60) <= iVar7) {
      return;
    }
    FUN_1039f5bc();
    if (param_1 == 0) {
      iVar3 = FUN_1039f6f0(0x13,*(int *)(iVar1 + 0x44) + iVar7 * 0x220,local_78,local_30);
    }
    else {
      local_44 = param_1 * 3;
      iVar3 = FUN_103a02cc(*(undefined4 *)(iVar2 + param_1 * 0xc),
                           *(int *)(iVar1 + 0x44) + iVar7 * 0x220);
      local_30[0] = (uint)*(byte *)(iVar2 + local_44 * 4 + 4);
      local_78[0] = param_1;
    }
    if (iVar3 != 0) {
      local_44 = iVar7 * 0x11;
      local_40 = local_44;
      FUN_1039f77a(*(undefined4 *)(*(int *)(iVar1 + 0x48) + iVar7 * 4),
                   *(int *)(iVar1 + 0x44) + iVar7 * 0x220,0x100,DAT_1039ffbc);
      FUN_1035d1ec(DAT_1039ffc0,*(int *)(iVar1 + 0x44) + local_40 * 0x20,0x220);
      iVar4 = FUN_1039f9c4(DAT_1039ffbc,iVar3);
      if (iVar4 == 1) {
        if (((iVar3 == 0xb) || (iVar3 == 0x11)) && (*(char *)(DAT_1039ffbc + -0xba) == '\x0e')) {
          iVar3 = 0xd;
          local_30[0] = 0xe;
        }
        *(int *)(iVar1 + 0x4c) = *(int *)(iVar1 + 0x4c) + 1;
        *(char *)(param_2 + local_30[0] * 0x14 + 4) = (char)local_30[0];
        for (iVar4 = *(int *)(iVar2 + local_78[0] * 0xc); iVar4 != 0; iVar4 = *(int *)(iVar4 + 0xc))
        {
          if ((*(code **)(iVar4 + 8) == (code *)0x0) ||
             (iVar6 = (**(code **)(iVar4 + 8))(), iVar6 != 0)) {
            if (((iVar3 != 0xb) && ((iVar3 != 0x11 && (iVar3 != 0xe)))) ||
               (*(int *)(iVar1 + 0x50) != 0)) {
              *(undefined4 *)(param_2 + local_30[0] * 0x14 + 0x10) = 1;
            }
            local_78[3] = 0;
            local_78[1] = 0;
            local_78[2] = 0;
            local_78[8] = 0;
            local_78[4] = 0;
            local_78[5] = 0;
            local_78[6] = 0;
            local_78[7] = 0;
            FUN_1039f804(iVar3,local_30[0],local_78 + 1,local_78 + 5);
            iVar4 = FUN_10439920(local_78 + 1,local_78 + 5);
            if (-1 < iVar4) {
              FUN_1035d1ec(DAT_1039ffc0,*(int *)(iVar1 + 0x44) + local_44 * 0x20,0x220);
              FUN_1039f8dc(DAT_1039ffbc,local_30[0]);
              *(char *)(DAT_1039ffc4 + local_30[0] * 0x1cc + 0x1c8) = (char)iVar3;
            }
            break;
          }
        }
      }
      else {
        *(char *)(param_2 + local_30[0] * 0x14 + 4) = (char)local_30[0];
      }
      FUN_104d6a10(DAT_1039ffbc,local_54);
      iVar3 = FUN_10509568();
      if (iVar3 == 0) {
        uVar5 = 0x2f02;
      }
      else {
        uVar5 = 0x2f03;
      }
      iVar3 = FUN_10100490(uVar5);
      if (iVar3 != 0 || (local_54[0] & 1) != 0) {
        *(undefined4 *)(param_2 + local_30[0] * 0x14 + 0x14) = 0;
      }
      iVar3 = param_2 + local_30[0] * 0x14;
      *(undefined4 *)(iVar3 + 0xc) = 1;
      *(undefined4 *)(iVar3 + 8) = 1;
    }
    FUN_1039f5bc();
    iVar7 = iVar7 + 1;
  } while( true );
}




/* Address: 0x1039f9c4; body size: 224 bytes */

undefined4 FUN_1039f9c4(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_38 [44];
  
  FUN_1035d2dc(auStack_38,0x28);
  FUN_104d67a4(auStack_38,param_1);
  iVar1 = FUN_104d67a8(auStack_38,0);
  if (iVar1 != DAT_1039fb1c) {
    FUN_104d6834(auStack_38);
    return 9;
  }
  switch(param_2) {
  default:
    uVar2 = 0x30;
    break;
  case 1:
    uVar2 = FUN_1039d41a(DAT_1039fb18,auStack_38);
    break;
  case 2:
  case 4:
    uVar2 = FUN_1039e016(DAT_1039fb18,auStack_38);
    break;
  case 3:
    uVar2 = FUN_1039df6c(DAT_1039fb18,auStack_38);
    break;
  case 6:
    uVar2 = FUN_1039da9e(DAT_1039fb18,auStack_38);
    break;
  case 8:
    uVar2 = 0;
    goto LAB_1039fa88;
  case 9:
    uVar2 = 1;
    goto LAB_1039fa88;
  case 10:
    uVar2 = 2;
LAB_1039fa88:
    uVar2 = FUN_1039db54(DAT_1039fb18,auStack_38,uVar2);
    break;
  case 0xb:
    uVar2 = FUN_1039d9b4(DAT_1039fb18,auStack_38);
    break;
  case 0xc:
    uVar2 = FUN_1039ded0(DAT_1039fb18,auStack_38);
    break;
  case 0xd:
    uVar2 = FUN_1039d7ac(DAT_1039fb18,auStack_38);
    break;
  case 0x11:
    uVar2 = FUN_1039d5c8(DAT_1039fb18,auStack_38);
    break;
  case 0x12:
    uVar2 = FUN_1039d6b6(DAT_1039fb18,auStack_38);
    break;
  case 0x13:
    uVar2 = FUN_1039dc36(DAT_1039fb18,auStack_38);
    break;
  case 0x14:
    uVar2 = FUN_1039dd12(DAT_1039fb18,auStack_38);
    break;
  case 0x15:
    uVar2 = FUN_1039d8ca(DAT_1039fb18,auStack_38);
    break;
  case 0x16:
    uVar2 = FUN_1039de30(DAT_1039fb18,auStack_38);
  }
  FUN_104d6834(auStack_38);
  return uVar2;
}




/* Address: 0x1039e768; body size: 272 bytes */

undefined4 FUN_1039e768(int param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  char *pcVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  char *pcVar9;
  undefined1 auStack_48 [44];
  
  iVar2 = DAT_1039e998;
  uVar6 = 0;
  if (param_1 == 0) {
    pcVar5 = DAT_1039e9a4 + -0x84;
    iVar8 = 0xb;
  }
  else {
    iVar8 = 3;
    pcVar5 = DAT_1039e9a4;
  }
  pcVar9 = (char *)(DAT_1039e998 + -0x90);
  FUN_1050c652(*(undefined4 *)(DAT_1039e998 + -0x34));
  iVar7 = 0;
LAB_1039e7fa:
  if (iVar7 < iVar8) {
    if (((*(code **)(pcVar5 + 8) != (code *)0x0) &&
        (iVar3 = (**(code **)(pcVar5 + 8))(), iVar3 != 1)) ||
       (iVar3 = FUN_1039e63e(*(undefined4 *)(pcVar5 + 4),*pcVar5,DAT_1039e9a8), iVar3 == 0))
    goto LAB_1039e7f6;
    cVar1 = *pcVar5;
    *pcVar9 = cVar1;
    if (cVar1 == '\0') goto LAB_1039e874;
    FUN_1039e620(DAT_1039e9a8 + -0xfd);
    FUN_104d67a4(auStack_48,DAT_1039e99c);
    iVar8 = FUN_104d67a8(auStack_48,0);
    if (iVar8 != DAT_1039e9a0) goto LAB_1039e874;
    *(undefined4 *)(iVar2 + -0x2c) = *(undefined4 *)(DAT_1039e9a8 + 0x218);
    switch(cVar1) {
    default:
      FUN_104d6834(auStack_48);
      goto LAB_1039e874;
    case '\x01':
      iVar8 = FUN_1039d41a(DAT_1039e9a8,auStack_48);
      break;
    case '\x02':
      iVar8 = FUN_1039d4aa(DAT_1039e9a8,auStack_48);
      break;
    case '\x03':
      iVar8 = FUN_1039df6c(DAT_1039e9a8,auStack_48);
      break;
    case '\x04':
      iVar8 = FUN_1039e016(DAT_1039e9a8,auStack_48);
      break;
    case '\x05':
      FUN_104d6834(auStack_48);
      goto LAB_1039e876;
    case '\x06':
      iVar8 = FUN_1039da9e(DAT_1039e9a8,auStack_48);
      break;
    case '\b':
      uVar4 = 0;
      goto LAB_1039e850;
    case '\t':
      uVar4 = 1;
LAB_1039e850:
      iVar8 = FUN_1039db54(DAT_1039e9a8,auStack_48,uVar4);
      break;
    case '\v':
      iVar8 = FUN_1039d9b4(DAT_1039e9a8,auStack_48);
      break;
    case '\f':
      iVar8 = FUN_1039ded0(DAT_1039e9a8,auStack_48);
    }
    FUN_104d6834(auStack_48);
    if (iVar8 != 1) goto LAB_1039e874;
  }
  else {
    *pcVar9 = '\0';
LAB_1039e874:
    uVar6 = 3;
  }
LAB_1039e876:
  FUN_1050c6ba(*(undefined4 *)(iVar2 + -0x34));
  return uVar6;
LAB_1039e7f6:
  pcVar5 = pcVar5 + 0xc;
  iVar7 = iVar7 + 1;
  goto LAB_1039e7fa;
}




/* Address: 0x1039d4aa; body size: 286 bytes */

undefined4 FUN_1039d4aa(int param_1,undefined4 param_2)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  uint uVar8;
  byte *pbVar9;
  int local_30;
  undefined1 local_2c [4];
  undefined4 local_28;
  undefined4 local_24;
  undefined1 auStack_20 [4];
  
  iVar5 = DAT_1039d850;
  if (*(uint *)(DAT_1039d850 + 0x10) < *(uint *)(param_1 + 0x218)) {
    return 0xb;
  }
  iVar2 = FUN_104d6934(param_2,0x10,0,auStack_20);
  iVar7 = DAT_1039d844;
  if (iVar2 == 1) {
    local_2c[0] = 1;
    local_28 = *(undefined4 *)(DAT_1039d844 + 0x40);
    local_24 = 8;
    FUN_1034bde8(local_28,8);
    iVar3 = FUN_104d6926(param_2,local_2c,4,&local_30);
    iVar2 = DAT_1039d848;
    if ((iVar3 == DAT_1039d848) &&
       (FUN_1034bdac(*(undefined4 *)(iVar7 + 0x40),local_24), local_30 == 4)) {
      pbVar9 = (byte *)(*(int *)(iVar5 + 4) + 0x10);
      piVar4 = (int *)FUN_103f9888();
      uVar8 = (uint)*pbVar9;
      bVar1 = *(byte *)(*piVar4 + uVar8);
      if (((bVar1 & 0x98) != 0) || ((bVar1 == 0x20 || (uVar8 == 0x5f)))) {
        uVar8 = (uint)**(byte **)(iVar7 + 0x40);
        bVar1 = *(byte *)(*piVar4 + uVar8);
        if ((((bVar1 & 0x98) != 0) || ((bVar1 == 0x20 || (uVar8 == 0x5f)))) &&
           (iVar5 = FUN_103e321e(*(byte **)(iVar7 + 0x40),pbVar9,4), iVar5 != 0)) {
          return 0x10;
        }
      }
      local_2c[0] = 1;
      local_28 = *(undefined4 *)(iVar7 + 0x40);
      local_24 = 8;
      iVar5 = FUN_104d6934(param_2,0x24,0,auStack_20);
      if (iVar5 != 1) goto LAB_1039d56a;
      FUN_1034bde8(*(undefined4 *)(iVar7 + 0x40),local_24);
      iVar5 = FUN_104d6926(param_2,local_2c,8,&local_30);
      if ((iVar5 == iVar2) && (FUN_1034bdac(*(undefined4 *)(iVar7 + 0x40),local_24), local_30 == 8))
      {
        FUN_1035d2dc(DAT_1039d84c + -0x40,0x20);
        FUN_1035d254(DAT_1039d84c + -0x40,*(undefined4 *)(iVar7 + 0x40),8);
        iVar5 = DAT_1039d84c;
        iVar7 = DAT_1039d84c + -0xab;
        *(undefined1 *)(DAT_1039d84c + -0xac) = 3;
        FUN_1039d216(3,iVar7);
        *(undefined4 *)(iVar5 + -0xb0) = 1;
        return 1;
      }
    }
    uVar6 = 0xd;
  }
  else {
LAB_1039d56a:
    uVar6 = 0xc;
  }
  return uVar6;
}




/* Address: 0x103f7370; body size: 50 bytes */

undefined4 FUN_103f7370(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_50 [72];
  
  FUN_1039f5bc();
  if (param_1 == 0) {
    iVar1 = FUN_1039d10a();
  }
  else {
    iVar1 = FUN_1039d11c();
  }
  if ((iVar1 == 0) && (iVar1 = FUN_1039e768(param_1), iVar1 == 0)) {
    FUN_1039f5fa(auStack_50);
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}




/* Address: 0x103af744; body size: 444 bytes */

undefined2 FUN_103af744(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined1 uVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  int iVar8;
  int *piVar9;
  uint uVar10;
  ushort uVar11;
  bool bVar12;
  int local_40;
  int local_3c;
  undefined1 local_38 [4];
  int *local_34;
  int iStack_30;
  undefined4 local_2c;
  undefined4 uStack_28;
  
  local_40 = 0x30;
  local_2c = param_1;
  uStack_28 = param_2;
  iVar5 = FUN_104d6934(param_1,param_2,0,&local_3c);
  bVar12 = iVar5 == 1;
  do {
    piVar1 = DAT_103af9a4;
    if (!bVar12) {
      return 0;
    }
    *DAT_103af9a4 = local_3c;
    FUN_1034bde8(piVar1 + -0x118,0x460);
    FUN_1035d2dc(piVar1 + 3,0x30);
    piVar9 = piVar1 + -0x118;
    local_38[0] = 1;
    iStack_30 = 0x30;
    local_34 = piVar9;
    iVar6 = FUN_104d6926(local_2c,local_38,0x30,&local_40);
    iVar5 = DAT_103af9ac;
    bVar12 = iVar6 == DAT_103af9ac;
  } while (!bVar12);
  FUN_1035d1ec(piVar1 + 3,piVar9,0x30);
  if (local_40 == 0x30) {
    FUN_1034bdac(piVar9,0x460);
    if ((short)piVar1[0xb] == 0) {
      return 0;
    }
    FUN_103af6c6(piVar1 + 0xb,0x20,0x30);
    FUN_103af694(piVar1 + 0xc);
    FUN_103af6b6((int)piVar1 + 0x2e);
    if ((short)piVar1[0xb] == 0) {
      *(undefined1 *)(piVar1 + 2) = 1;
      if (0x2f < (uint)piVar1[0xc]) {
        iVar8 = piVar1[0xc] - 0x30;
        FUN_1035d2dc(piVar9,iVar8);
        local_38[0] = 1;
        local_34 = piVar9;
        iStack_30 = iVar8;
        FUN_1034bde8(piVar9,0x460);
        iVar6 = FUN_104d6926(local_2c,local_38,iVar8,&local_40);
        if (iVar6 == iVar5) {
          FUN_1034bdac(piVar9,0x460);
          FUN_1035d1ec(piVar1 + 0xf,piVar9,iVar8);
          if (local_40 == iVar8) {
            FUN_103af6c6(piVar1 + 0xf,0x30,iVar8);
            piVar2 = DAT_103af9a4;
            for (uVar10 = 0; uVar10 < *(ushort *)((int)piVar2 + 0x2e); uVar10 = uVar10 + 1 & 0xffff)
            {
              uVar11 = 0;
              piVar7 = piVar2 + uVar10 * 8 + 0xf;
              do {
                uVar4 = FUN_103a26e2((char)*piVar7);
                uVar11 = uVar11 + 1;
                *(undefined1 *)piVar7 = uVar4;
                piVar7 = (int *)((int)piVar7 + 1);
              } while (uVar11 < 0x10);
              FUN_103af694(piVar2 + uVar10 * 8 + 0x13);
              FUN_103af694(piVar2 + uVar10 * 8 + 0x14);
            }
            iVar6 = FUN_104d6934(local_2c,0xfffffff0,2,&local_3c);
            uVar3 = DAT_103af9b0;
            if (iVar6 == 1) {
              piVar2[1] = local_3c + 0x10;
              local_38[0] = 1;
              iStack_30 = 0x10;
              local_34 = piVar9;
              FUN_1034bde8(uVar3,0x460);
              iVar6 = FUN_104d6926(local_2c,local_38,0x10,&local_40);
              if (iVar6 == iVar5) {
                FUN_1034bdac(DAT_103af9b0,0x460);
                piVar7 = DAT_103af9a4;
                iVar5 = piVar1[-0x117];
                iVar6 = piVar1[-0x116];
                iVar8 = piVar1[-0x115];
                DAT_103af9a4[0x37] = *piVar9;
                piVar7[0x38] = iVar5;
                piVar7[0x39] = iVar6;
                piVar7[0x3a] = iVar8;
                if (local_40 == 0x10) {
                  FUN_103af6c6(DAT_103af9a4 + 0x37,local_3c - *piVar2,0x10);
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }
  return 0;
}




/* Address: 0x1039ea40; body size: 364 bytes */

undefined4 FUN_1039ea40(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  int *piVar9;
  int *piVar10;
  bool bVar11;
  undefined4 local_28;
  undefined4 local_24;
  
  iVar7 = *(int *)(DAT_1039edc4 + 100);
  local_28 = param_3;
  local_24 = param_4;
  iVar1 = FUN_1039e6dc(param_1,iVar7);
  if (iVar1 != 0) {
    FUN_1039e9ea(0);
    FUN_103f70f8();
    iVar7 = iVar7 + -0x20;
    iVar1 = param_1 + 0x20;
    FUN_103af6c6(iVar1,0);
    local_28 = 0;
    local_24 = 0;
    FUN_103b1120();
    FUN_103b1128(DAT_1039edc8);
    FUN_103b112e(iVar1,iVar7);
    FUN_103b1136(param_1);
    local_28 = 0;
    local_24 = 0;
    FUN_1035d1ec(&local_28,s_Z_6_2_1039edcc,5);
    FUN_103b1142(DAT_1039edd4,0x44c,&local_28);
    iVar2 = FUN_103b2286();
    if (iVar2 != 0) {
      iVar2 = FUN_103af99e();
      iVar2 = (iVar7 - iVar2) + 2;
      iVar3 = FUN_103bea34(iVar2,iVar1);
      iVar7 = DAT_1039edc0;
      if (iVar3 == 0) {
        piVar9 = (int *)(DAT_1039edc0 + 0x420);
        piVar10 = (int *)(DAT_1039edc0 + 0x434);
        uVar6 = *(uint *)(DAT_1039edc0 + 0xb8);
        bVar11 = (int)(uVar6 << 0x1c) < 0;
        if (bVar11) {
          *piVar9 = *(int *)(DAT_1039edc0 + 0xb0) + iVar1;
          *piVar10 = *(int *)(iVar7 + 0x9c) + -2;
        }
        uVar4 = (uint)bVar11;
        if ((int)(uVar6 << 0x1d) < 0) {
          piVar9[uVar4] = *(int *)(iVar7 + 0xac) + iVar1;
          piVar10[uVar4] = *(int *)(iVar7 + 0x98) + -2;
          uVar4 = uVar4 + 1;
        }
        if ((uVar6 & 1) != 0) {
          piVar9[uVar4] = *(int *)(iVar7 + 0xa4) + iVar1;
          piVar10[uVar4] = *(int *)(iVar7 + 0x90) + -2;
          uVar4 = uVar4 + 1;
        }
        uVar5 = uVar4;
        uVar8 = 0;
        if ((int)(uVar6 << 0x1b) < 0) {
          piVar9[uVar4] = *(int *)(iVar7 + 0xb4) + iVar1;
          piVar10[uVar4] = *(int *)(iVar7 + 0xa0);
          uVar5 = uVar4 + 1;
          uVar8 = uVar4;
        }
        if ((int)(uVar6 << 0x1e) < 0) {
          piVar9[uVar5] = *(int *)(iVar7 + 0xa8) + iVar1;
          piVar10[uVar5] = *(int *)(iVar7 + 0x94) + -2;
        }
        if ((uVar6 == 0) && (iVar3 = *(int *)(iVar7 + 0x90), iVar3 != 0)) {
          *piVar9 = *(int *)(iVar7 + 0xa4) + iVar1;
          *piVar10 = iVar3 + -2;
        }
        if ((int)(uVar6 << 0x1b) < 0) {
          uVar6 = piVar9[uVar8];
          if ((uVar6 & 7) != 0) {
            iVar7 = (8 - (uVar6 & 7)) + uVar6;
            FUN_10439c24(iVar7,uVar6,piVar10[uVar8]);
            piVar9[uVar8] = iVar7;
          }
          if ((uint)(piVar9[uVar8] + piVar10[uVar8]) >> 0x1c != (uint)piVar9[uVar8] >> 0x1c) {
            uVar6 = iVar1 + iVar2;
            if ((uVar6 & 7) != 0) {
              uVar6 = uVar6 + (8 - (uVar6 & 7));
            }
            FUN_1035d254(uVar6);
            piVar9[uVar8] = uVar6;
          }
        }
        return 0;
      }
    }
    FUN_1039e9ea(1);
  }
  return 3;
}




/* Address: 0x103b1142; body size: 34 bytes */

void FUN_103b1142(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  
  FUN_1035d254(DAT_103b151c + 0xc,param_1,8);
  iVar1 = DAT_103b151c;
  *(undefined4 *)(DAT_103b151c + 0x14) = param_2;
  FUN_103f9a64(iVar1 + 0x18,param_3);
  return;
}




/* Address: 0x103b2286; body size: 132 bytes */

undefined4 FUN_103b2286(void)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  int *piVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 local_88;
  undefined4 local_84;
  uint uStack_80;
  uint uStack_7c;
  uint uStack_78;
  uint uStack_74;
  undefined4 uStack_70;
  undefined1 auStack_2c [24];
  
  piVar2 = DAT_103b23a4;
  uVar6 = 0;
  piVar1 = DAT_103b23a4 + 2;
  if (((code *)*piVar1 != (code *)0x0) && (*DAT_103b23a4 != 0)) {
    uVar3 = ~DAT_103b23a4[5];
    piVar4 = DAT_103b23a4 + 3;
    DAT_103b23a4[5] =
         uVar3 << 0x18 | (uVar3 >> 8 & 0xff) << 0x10 | (uVar3 >> 0x10 & 0xff) << 8 | uVar3 >> 0x18;
    (*(code *)*piVar1)(piVar4,8);
    FUN_1035d254(*piVar2 + piVar2[1],piVar4,8);
    piVar2[1] = piVar2[1] + 8;
    FUN_103b2da0(1,s_FirmwareChkLib_c_103b23a8,0x19a);
    uStack_78 = ~DAT_103b23bc;
    uStack_74 = ~DAT_103b23c0;
    local_84 = 0;
    uStack_80 = DAT_103b23bc;
    uStack_7c = DAT_103b23c0;
    uStack_70 = DAT_103b23c4;
    local_88 = 0;
    FUN_103b21e2(&local_88,*piVar2,piVar2[1]);
    FUN_103b230a(auStack_2c,&local_88);
    iVar5 = FUN_103e321e(piVar2 + 8,auStack_2c,0x14);
    if (iVar5 == 0) {
      uVar6 = 1;
    }
  }
  return uVar6;
}




/* Address: 0x104b5386; body size: 64 bytes */

undefined4 FUN_104b5386(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 auStack_2c [6];
  
  FUN_1035d2dc(auStack_2c,0x14);
  if ((*(int *)(param_2 + 0x14) == 0) ||
     (iVar1 = FUN_104b5314(*(int *)(param_2 + 0x10),
                           *(int *)(param_2 + 0x14) + *(int *)(param_2 + 0x10) + -1), iVar1 == 0)) {
    auStack_2c[0] = 0x201d;
    FUN_1063f710(param_2,0x2001,5,auStack_2c,2);
    uVar2 = 0;
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}




/* Address: 0x104b5314; body size: 114 bytes */

undefined4 FUN_104b5314(uint param_1,uint param_2)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  uint local_20 [3];
  int local_14;
  
  if ((((param_2 < DAT_104b570c) || ((DAT_104b570c + DAT_104b5710) - 1 < param_1)) &&
      ((param_2 < DAT_104b5714 || ((DAT_104b5714 + DAT_104b5718) - 1 < param_1)))) &&
     ((((param_2 < DAT_104b571c || ((DAT_104b571c + DAT_104b5720) - 1 < param_1)) &&
       ((param_2 < 0x10000000 || (0x13ffffff < param_1)))) && (0x3ffffff < param_1)))) {
    iVar1 = FUN_103a6c64(8,local_20);
    if (iVar1 != 0) {
      uVar3 = (local_20[0] - 1) + local_14;
      if ((((local_20[0] != 0) && (uVar3 != 0)) && (local_20[0] <= param_2)) && (param_1 <= uVar3))
      goto LAB_104b537c;
    }
    uVar2 = 1;
  }
  else {
LAB_104b537c:
    uVar2 = 0;
  }
  return uVar2;
}




/* Address: 0x104b5488; body size: 94 bytes */

int FUN_104b5488(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 auStack_24 [5];
  
  FUN_1035d2dc(auStack_24,0x14);
  uVar2 = *(undefined4 *)(param_2 + 0x10);
  uVar3 = *(undefined4 *)(param_2 + 0x14);
  iVar1 = FUN_103c81dc(uVar2);
  if (iVar1 == 0) {
    iVar1 = FUN_1063f682(param_2,uVar2,uVar3,5000);
  }
  else {
    iVar1 = FUN_104b53c6();
  }
  if (iVar1 == 0) {
    auStack_24[0] = 0x2007;
  }
  else {
    auStack_24[0] = 0x2001;
  }
  FUN_1063f710(param_2,0x2001,5,auStack_24,iVar1 == 0);
  return iVar1;
}



