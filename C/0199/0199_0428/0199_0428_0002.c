#include <stdlib.h>
extern signed int v1 (signed char, unsigned short, unsigned char, signed int);
extern signed int (*v2) (signed char, unsigned short, unsigned char, signed int);
extern signed char v3 (signed int, unsigned short, signed char);
extern signed char (*v4) (signed int, unsigned short, signed char);
unsigned char v5 (signed char, unsigned short, unsigned char);
unsigned char (*v6) (signed char, unsigned short, unsigned char) = v5;
extern signed char v7 (unsigned char, signed int, signed short, unsigned int);
extern signed char (*v8) (unsigned char, signed int, signed short, unsigned int);
extern unsigned short v9 (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned short (*v10) (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned int v11 (signed short, signed int, unsigned char);
extern unsigned int (*v12) (signed short, signed int, unsigned char);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
signed int v17 (void);
signed int (*v18) (void) = v17;
signed int v19 (signed int, unsigned char, unsigned int);
signed int (*v20) (signed int, unsigned char, unsigned int) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern unsigned char v27 (unsigned int, unsigned char, signed char);
extern unsigned char (*v28) (unsigned int, unsigned char, signed char);
unsigned short v29 (unsigned short, signed int, unsigned int, unsigned int);
unsigned short (*v30) (unsigned short, signed int, unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v60 = 3U;
unsigned char v59 = 0;
signed char v58 = 1;

unsigned short v29 (unsigned short v61, signed int v62, unsigned int v63, unsigned int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 6;
signed char v66 = 0;
unsigned char v65 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed int v68, unsigned char v69, unsigned int v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -3;
signed int v72 = -2;
signed int v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
unsigned short v76 = 2;
unsigned int v75 = 7U;
signed int v74 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v77;
signed int v78;
v77 = 1 + 0;
v78 = v23 (v77);
history[history_index++] = (int)v78;
}
break;
case 5: 
return -2;
case 7: 
{
signed char v79;
signed int v80;
v79 = 3 + 0;
v80 = v23 (v79);
history[history_index++] = (int)v80;
}
break;
case 9: 
{
signed char v81;
signed int v82;
v81 = -3 - -2;
v82 = v23 (v81);
history[history_index++] = (int)v82;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

unsigned char v5 (signed char v83, unsigned short v84, unsigned char v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 0;
unsigned int v87 = 0U;
unsigned int v86 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
