#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char);
extern unsigned char (*v2) (signed short, unsigned char);
extern signed char v3 (signed int, unsigned char);
extern signed char (*v4) (signed int, unsigned char);
void v5 (void);
void (*v6) (void) = v5;
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (signed short, unsigned short, signed int);
extern signed int (*v12) (signed short, unsigned short, signed int);
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
unsigned char v15 (signed int);
unsigned char (*v16) (signed int) = v15;
extern unsigned char v19 (signed short, signed char, unsigned int, unsigned char);
extern unsigned char (*v20) (signed short, signed char, unsigned int, unsigned char);
extern unsigned char v21 (unsigned short, signed short);
extern unsigned char (*v22) (unsigned short, signed short);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern unsigned short v25 (unsigned short, signed char, unsigned short, signed short);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, signed short);
void v27 (signed int, unsigned int);
void (*v28) (signed int, unsigned int) = v27;
extern signed short v29 (unsigned char, signed int, unsigned int);
extern signed short (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v51 = 3;
signed short v50 = -4;
unsigned char v49 = 7;

void v27 (signed int v52, unsigned int v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = 1;
signed int v55 = -2;
unsigned short v54 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed char v59 = -4;
unsigned int v58 = 4U;
unsigned char v57 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 7;
unsigned char v62 = 7;
unsigned char v61 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
unsigned char v66 = 3;
signed int v65 = 0;
signed short v64 = 0;
trace++;
switch (trace)
{
case 4: 
{
signed short v67;
signed char v68;
unsigned int v69;
unsigned char v70;
unsigned char v71;
v67 = -4 + 1;
v68 = -4 + 3;
v69 = 0U + 3U;
v70 = 5 + 3;
v71 = v19 (v67, v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 6: 
{
signed short v72;
signed char v73;
unsigned int v74;
unsigned char v75;
unsigned char v76;
v72 = -3 - v64;
v73 = 0 - -2;
v74 = 0U - 7U;
v75 = 1 + 2;
v76 = v19 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 8: 
{
unsigned char v77;
signed char v78;
v77 = v66 + v66;
v78 = v7 (v77);
history[history_index++] = (int)v78;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
