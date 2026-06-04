#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (unsigned short, signed short, signed int, unsigned char);
extern unsigned int (*v4) (unsigned short, signed short, signed int, unsigned char);
unsigned short v7 (signed short, unsigned int);
unsigned short (*v8) (signed short, unsigned int) = v7;
extern unsigned int v9 (unsigned short, signed char, signed int);
extern unsigned int (*v10) (unsigned short, signed char, signed int);
signed short v11 (signed char, unsigned short, unsigned short, unsigned char);
signed short (*v12) (signed char, unsigned short, unsigned short, unsigned char) = v11;
extern unsigned short v13 (signed short, unsigned short);
extern unsigned short (*v14) (signed short, unsigned short);
extern signed short v15 (signed char, unsigned int);
extern signed short (*v16) (signed char, unsigned int);
void v19 (signed short, signed char, unsigned char);
void (*v20) (signed short, signed char, unsigned char) = v19;
unsigned char v21 (signed char, unsigned int, unsigned char, signed char);
unsigned char (*v22) (signed char, unsigned int, unsigned char, signed char) = v21;
extern unsigned char v23 (unsigned short, signed int);
extern unsigned char (*v24) (unsigned short, signed int);
unsigned short v25 (unsigned int, signed char, unsigned char, unsigned char);
unsigned short (*v26) (unsigned int, signed char, unsigned char, unsigned char) = v25;
unsigned char v27 (unsigned char, signed char);
unsigned char (*v28) (unsigned char, signed char) = v27;
extern unsigned char v29 (unsigned short, unsigned short, signed int);
extern unsigned char (*v30) (unsigned short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v39 = 2;
signed char v38 = -3;
signed int v37 = -3;

unsigned char v27 (unsigned char v40, signed char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -1;
unsigned int v43 = 4U;
signed int v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (unsigned int v45, signed char v46, unsigned char v47, unsigned char v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 1;
signed int v50 = 3;
signed char v49 = 0;
trace++;
switch (trace)
{
case 3: 
return 6;
case 9: 
return 3;
case 11: 
return 5;
default: abort ();
}
}
}
}

unsigned char v21 (signed char v52, unsigned int v53, unsigned char v54, signed char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = 1;
unsigned char v57 = 2;
unsigned int v56 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed short v59, signed char v60, unsigned char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 0U;
unsigned char v63 = 2;
signed short v62 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v65, unsigned short v66, unsigned short v67, unsigned char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = 3;
signed char v70 = -3;
signed int v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v72, unsigned int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = -1;
signed char v75 = -4;
signed short v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
