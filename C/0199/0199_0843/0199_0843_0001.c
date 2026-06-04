#include <stdlib.h>
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned int v9 (unsigned char, unsigned char, signed char);
extern unsigned int (*v10) (unsigned char, unsigned char, signed char);
extern unsigned char v11 (signed short, unsigned char);
extern unsigned char (*v12) (signed short, unsigned char);
signed short v13 (unsigned short, signed int);
signed short (*v14) (unsigned short, signed int) = v13;
signed short v15 (signed short, signed char);
signed short (*v16) (signed short, signed char) = v15;
extern unsigned int v17 (unsigned int, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short);
void v19 (unsigned short, signed char, unsigned short);
void (*v20) (unsigned short, signed char, unsigned short) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short);
extern void (*v24) (signed short);
unsigned short v25 (unsigned short, unsigned short, signed int, signed char);
unsigned short (*v26) (unsigned short, unsigned short, signed int, signed char) = v25;
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern unsigned char v29 (signed char, signed int, unsigned char);
extern unsigned char (*v30) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v47 = -4;
unsigned short v46 = 0;
unsigned short v45 = 4;

unsigned char v27 (void)
{
{
for (;;) {
signed int v50 = -2;
signed char v49 = -1;
signed short v48 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v51, unsigned short v52, signed int v53, signed char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 3;
signed short v56 = 3;
signed short v55 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned short v58, signed char v59, unsigned short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = -3;
signed char v62 = -4;
unsigned int v61 = 0U;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed short v15 (signed short v64, signed char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -2;
signed char v67 = -1;
unsigned int v66 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned short v69, signed int v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -3;
unsigned int v72 = 4U;
unsigned short v71 = 1;
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
signed short v76 = -4;
unsigned char v75 = 3;
signed short v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
