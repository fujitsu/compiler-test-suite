#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned short, unsigned char, unsigned short);
extern signed int v3 (unsigned int, unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned int, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned int v7 (signed int, signed int, unsigned short);
extern unsigned int (*v8) (signed int, signed int, unsigned short);
extern signed char v9 (unsigned char);
extern signed char (*v10) (unsigned char);
unsigned char v13 (unsigned short, unsigned short, signed int, signed int);
unsigned char (*v14) (unsigned short, unsigned short, signed int, signed int) = v13;
extern signed short v15 (signed char, unsigned short, signed short);
extern signed short (*v16) (signed char, unsigned short, signed short);
signed int v17 (signed int, signed int, unsigned int);
signed int (*v18) (signed int, signed int, unsigned int) = v17;
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern unsigned short v25 (signed char, unsigned short, unsigned short);
extern unsigned short (*v26) (signed char, unsigned short, unsigned short);
extern unsigned char v27 (unsigned char, unsigned int, signed short);
extern unsigned char (*v28) (unsigned char, unsigned int, signed short);
signed int v29 (signed char, signed short);
signed int (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v48 = -4;
unsigned char v47 = 3;
unsigned int v46 = 2U;

signed int v29 (signed char v49, signed short v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 6;
unsigned short v52 = 5;
unsigned char v51 = 4;
trace++;
switch (trace)
{
case 5: 
return -4;
case 7: 
return -1;
case 9: 
return -4;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
unsigned int v56 = 1U;
signed int v55 = 0;
unsigned char v54 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v57;
unsigned int v58;
signed short v59;
unsigned char v60;
v57 = 7 + 6;
v58 = 7U + v56;
v59 = 2 + 2;
v60 = v27 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 13: 
return v55;
default: abort ();
}
}
}
}

signed int v17 (signed int v61, signed int v62, unsigned int v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 0;
unsigned char v65 = 4;
unsigned char v64 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v67, unsigned short v68, signed int v69, signed int v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = 2;
signed short v72 = 1;
signed int v71 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
