#include <stdlib.h>
extern unsigned int v1 (signed short, signed short, unsigned char, unsigned short);
extern unsigned int (*v2) (signed short, signed short, unsigned char, unsigned short);
extern unsigned short v3 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned int, signed char, unsigned short, unsigned short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern signed char v7 (signed char, unsigned char, signed short);
extern signed char (*v8) (signed char, unsigned char, signed short);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern signed char v11 (unsigned short, signed short, signed int, signed short);
extern signed char (*v12) (unsigned short, signed short, signed int, signed short);
extern signed char v13 (unsigned int, signed short);
extern signed char (*v14) (unsigned int, signed short);
extern void v15 (unsigned char, unsigned int);
extern void (*v16) (unsigned char, unsigned int);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (unsigned char, unsigned int);
extern signed char (*v22) (unsigned char, unsigned int);
extern unsigned char v23 (unsigned short, signed short);
extern unsigned char (*v24) (unsigned short, signed short);
unsigned int v25 (signed int, unsigned int, unsigned int, unsigned int);
unsigned int (*v26) (signed int, unsigned int, unsigned int, unsigned int) = v25;
extern void v27 (void);
extern void (*v28) (void);
signed int v29 (signed int, unsigned int);
signed int (*v30) (signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v58 = 3;
signed int v57 = -2;
signed short v56 = 2;

signed int v29 (signed int v59, unsigned int v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = 3;
signed short v62 = -4;
signed char v61 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (signed int v64, unsigned int v65, unsigned int v66, unsigned int v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 7;
signed char v69 = -1;
unsigned int v68 = 2U;
trace++;
switch (trace)
{
case 4: 
return 0U;
case 6: 
{
unsigned char v71;
unsigned int v72;
signed char v73;
v71 = 6 + 3;
v72 = v66 + 3U;
v73 = v21 (v71, v72);
history[history_index++] = (int)v73;
}
break;
case 8: 
{
unsigned char v74;
unsigned int v75;
signed char v76;
v74 = 7 + 3;
v75 = v65 + 4U;
v76 = v21 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 10: 
return v68;
default: abort ();
}
}
}
}
