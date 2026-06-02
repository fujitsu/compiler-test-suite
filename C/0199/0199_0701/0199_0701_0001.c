#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char, signed short);
extern signed short (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned int v7 (signed short, unsigned char);
extern unsigned int (*v8) (signed short, unsigned char);
extern void v9 (signed short, unsigned int);
extern void (*v10) (signed short, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
signed short v13 (void);
signed short (*v14) (void) = v13;
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
unsigned int v17 (signed char, unsigned int);
unsigned int (*v18) (signed char, unsigned int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
void v21 (unsigned int, unsigned char);
void (*v22) (unsigned int, unsigned char) = v21;
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed int, unsigned char);
extern signed int (*v28) (signed int, unsigned char);
extern void v29 (unsigned char);
extern void (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v57 = 0;
unsigned short v56 = 3;
signed char v55 = -1;

void v21 (unsigned int v58, unsigned char v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = -4;
signed short v61 = -3;
signed int v60 = 1;
trace++;
switch (trace)
{
case 6: 
{
signed int v63;
signed short v64;
v63 = v60 + v60;
v64 = v23 (v63);
history[history_index++] = (int)v64;
}
break;
case 8: 
{
signed int v65;
signed short v66;
v65 = v60 - 0;
v66 = v23 (v65);
history[history_index++] = (int)v66;
}
break;
case 10: 
{
signed int v67;
signed short v68;
v67 = -4 + 1;
v68 = v23 (v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned int v17 (signed char v69, unsigned int v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 3;
unsigned short v72 = 3;
signed short v71 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed char v76 = 0;
signed int v75 = -2;
unsigned char v74 = 2;
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
signed short v79 = -3;
unsigned char v78 = 4;
unsigned char v77 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
