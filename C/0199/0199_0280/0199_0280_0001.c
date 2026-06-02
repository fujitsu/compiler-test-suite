#include <stdlib.h>
extern unsigned int v1 (signed int);
extern unsigned int (*v2) (signed int);
extern void v3 (unsigned char, signed int, signed char);
extern void (*v4) (unsigned char, signed int, signed char);
extern signed char v5 (signed int, signed short, unsigned int, signed int);
extern signed char (*v6) (signed int, signed short, unsigned int, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern unsigned char v9 (signed short, unsigned char, signed char, unsigned short);
extern unsigned char (*v10) (signed short, unsigned char, signed char, unsigned short);
signed short v11 (signed char, signed int, signed int);
signed short (*v12) (signed char, signed int, signed int) = v11;
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned int v17 (unsigned char, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned short, unsigned short, unsigned int);
unsigned int v19 (signed char, signed char, signed short, signed short);
unsigned int (*v20) (signed char, signed char, signed short, signed short) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern signed short v27 (signed int, unsigned short, unsigned int, signed char);
extern signed short (*v28) (signed int, unsigned short, unsigned int, signed char);
extern signed short v29 (signed int, signed short, signed char);
extern signed short (*v30) (signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v50 = -2;
signed int v49 = 0;
unsigned char v48 = 6;

unsigned int v19 (signed char v51, signed char v52, signed short v53, signed short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = 2;
signed int v56 = -1;
unsigned short v55 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
unsigned char v60 = 2;
unsigned char v59 = 7;
signed char v58 = 1;
trace++;
switch (trace)
{
case 2: 
return 0;
case 4: 
{
signed int v61;
unsigned short v62;
unsigned int v63;
signed char v64;
signed short v65;
v61 = 2 + 3;
v62 = 7 + 3;
v63 = 3U + 5U;
v64 = 3 - 1;
v65 = v27 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 6: 
{
unsigned int v66;
signed short v67;
v66 = 2U - 2U;
v67 = v23 (v66);
history[history_index++] = (int)v67;
}
break;
case 8: 
{
unsigned int v68;
signed short v69;
v68 = 0U - 5U;
v69 = v23 (v68);
history[history_index++] = (int)v69;
}
break;
case 10: 
{
signed int v70;
unsigned short v71;
unsigned int v72;
signed char v73;
signed short v74;
v70 = 2 + -2;
v71 = 4 + 1;
v72 = 5U + 1U;
v73 = -1 + 0;
v74 = v27 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

signed short v11 (signed char v75, signed int v76, signed int v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 1;
unsigned int v79 = 6U;
unsigned short v78 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
