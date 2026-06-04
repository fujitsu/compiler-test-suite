#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned int v5 (unsigned char);
unsigned int (*v6) (unsigned char) = v5;
unsigned char v7 (unsigned int, signed char, signed short);
unsigned char (*v8) (unsigned int, signed char, signed short) = v7;
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern unsigned char v11 (signed char, signed int, signed int);
extern unsigned char (*v12) (signed char, signed int, signed int);
extern signed short v15 (signed int, signed int, unsigned char);
extern signed short (*v16) (signed int, signed int, unsigned char);
extern signed char v17 (signed int, signed char, signed char, signed int);
extern signed char (*v18) (signed int, signed char, signed char, signed int);
extern unsigned short v21 (signed char, signed char);
extern unsigned short (*v22) (signed char, signed char);
extern void v23 (void);
extern void (*v24) (void);
signed int v25 (signed int, unsigned short, signed int);
signed int (*v26) (signed int, unsigned short, signed int) = v25;
extern signed short v27 (unsigned char, signed char);
extern signed short (*v28) (unsigned char, signed char);
extern signed int v29 (unsigned char, unsigned char);
extern signed int (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v51 = -1;
unsigned int v50 = 2U;
unsigned char v49 = 6;

signed int v25 (signed int v52, unsigned short v53, signed int v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = 3;
unsigned char v56 = 1;
signed int v55 = 2;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v58;
signed char v59;
signed short v60;
v58 = 7 + 1;
v59 = v57 + 1;
v60 = v27 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 6: 
return 0;
case 10: 
{
unsigned char v61;
signed char v62;
signed short v63;
v61 = 3 + 6;
v62 = -1 + 2;
v63 = v27 (v61, v62);
history[history_index++] = (int)v63;
}
break;
case 12: 
return v52;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v64, signed char v65, signed short v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = -4;
unsigned int v68 = 5U;
unsigned char v67 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = 1;
unsigned int v72 = 3U;
signed short v71 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
