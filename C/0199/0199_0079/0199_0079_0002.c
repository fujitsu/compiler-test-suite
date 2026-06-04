#include <stdlib.h>
unsigned int v1 (signed short, unsigned char);
unsigned int (*v2) (signed short, unsigned char) = v1;
static unsigned short v3 (unsigned char, signed int);
static unsigned short (*v4) (unsigned char, signed int) = v3;
extern signed char v5 (unsigned short, signed int);
extern signed char (*v6) (unsigned short, signed int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern unsigned char v9 (unsigned int, signed int, unsigned short);
extern unsigned char (*v10) (unsigned int, signed int, unsigned short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed short v13 (signed char, unsigned short, signed char);
extern signed short (*v14) (signed char, unsigned short, signed char);
extern unsigned short v15 (signed short, unsigned short);
extern unsigned short (*v16) (signed short, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed short v19 (signed int, signed short);
extern signed short (*v20) (signed int, signed short);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (signed short, unsigned short, unsigned char);
extern unsigned char (*v24) (signed short, unsigned short, unsigned char);
extern signed int v25 (unsigned char, signed short);
extern signed int (*v26) (unsigned char, signed short);
extern unsigned int v27 (unsigned char, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned short, unsigned int, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v85 = 3;
signed short v84 = -3;
unsigned short v83 = 5;

static unsigned short v3 (unsigned char v86, signed int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = -3;
signed short v89 = 3;
signed char v88 = 3;
trace++;
switch (trace)
{
case 6: 
{
signed short v91;
unsigned short v92;
unsigned short v93;
v91 = -1 - -2;
v92 = 7 + 3;
v93 = v15 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 8: 
{
unsigned char v94;
unsigned short v95;
unsigned int v96;
unsigned char v97;
unsigned int v98;
v94 = 2 - 7;
v95 = 2 + 7;
v96 = 0U - 4U;
v97 = 4 + 2;
v98 = v27 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 14: 
return 5;
default: abort ();
}
}
}
}

unsigned int v1 (signed short v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 6;
signed int v102 = -2;
unsigned short v101 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v104;
v104 = v11 ();
history[history_index++] = (int)v104;
}
break;
case 2: 
{
signed short v105;
unsigned short v106;
unsigned short v107;
v105 = -1 + -1;
v106 = v101 - v103;
v107 = v15 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 4: 
return 0U;
case 5: 
{
unsigned char v108;
signed int v109;
unsigned short v110;
v108 = 1 - v100;
v109 = v102 + v102;
v110 = v3 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 15: 
return 7U;
default: abort ();
}
}
}
}
