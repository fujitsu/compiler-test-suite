#include <stdlib.h>
signed int v1 (signed char, unsigned int, unsigned short);
signed int (*v2) (signed char, unsigned int, unsigned short) = v1;
extern void v3 (signed short, unsigned short, signed short, unsigned int);
extern void (*v4) (signed short, unsigned short, signed short, unsigned int);
extern unsigned short v5 (signed int, signed char, signed int);
extern unsigned short (*v6) (signed int, signed char, signed int);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned int v9 (unsigned short, signed int);
extern unsigned int (*v10) (unsigned short, signed int);
extern void v11 (unsigned char, unsigned char, signed short);
extern void (*v12) (unsigned char, unsigned char, signed short);
unsigned short v13 (signed int);
unsigned short (*v14) (signed int) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (signed char, signed short, unsigned char, unsigned short);
extern unsigned int (*v20) (signed char, signed short, unsigned char, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed int, unsigned int);
extern void (*v24) (signed int, unsigned int);
extern signed char v25 (signed short, signed short, unsigned int, signed char);
extern signed char (*v26) (signed short, signed short, unsigned int, signed char);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern void v29 (unsigned int, signed char);
extern void (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = -3;
signed short v49 = -1;
unsigned short v48 = 6;

signed short v27 (void)
{
{
for (;;) {
signed char v53 = -4;
unsigned char v52 = 1;
signed char v51 = -4;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned short v13 (signed int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 1U;
signed int v56 = -4;
unsigned short v55 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (void)
{
{
for (;;) {
signed int v60 = 1;
signed short v59 = -3;
unsigned int v58 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed char v61, unsigned int v62, unsigned short v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = 3;
signed char v65 = -4;
unsigned int v64 = 0U;
trace++;
switch (trace)
{
case 0: 
return 0;
case 1: 
{
unsigned char v67;
unsigned char v68;
signed short v69;
v67 = 7 - 4;
v68 = 0 + 3;
v69 = -3 + v66;
v11 (v67, v68, v69);
}
break;
case 5: 
{
signed int v70;
v70 = v21 ();
history[history_index++] = (int)v70;
}
break;
case 7: 
{
signed char v71;
signed short v72;
unsigned char v73;
unsigned short v74;
unsigned int v75;
v71 = v65 + v61;
v72 = v66 - 1;
v73 = 0 + 1;
v74 = v63 - 4;
v75 = v19 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 15: 
return 0;
default: abort ();
}
}
}
}
