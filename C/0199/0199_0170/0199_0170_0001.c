#include <stdlib.h>
extern unsigned char v1 (signed int, signed short, unsigned short);
extern unsigned char (*v2) (signed int, signed short, unsigned short);
extern signed int v3 (unsigned short, unsigned char, signed char);
extern signed int (*v4) (unsigned short, unsigned char, signed char);
extern unsigned short v5 (unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned short);
unsigned int v7 (signed char);
unsigned int (*v8) (signed char) = v7;
extern signed int v9 (unsigned int);
extern signed int (*v10) (unsigned int);
signed short v11 (unsigned short, signed char, signed short);
signed short (*v12) (unsigned short, signed char, signed short) = v11;
extern void v13 (signed short, unsigned short, signed char, unsigned int);
extern void (*v14) (signed short, unsigned short, signed char, unsigned int);
extern signed char v15 (unsigned int, unsigned short, signed char, unsigned int);
extern signed char (*v16) (unsigned int, unsigned short, signed char, unsigned int);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
void v21 (unsigned short, signed char, signed char);
void (*v22) (unsigned short, signed char, signed char) = v21;
void v23 (signed char, signed char);
void (*v24) (signed char, signed char) = v23;
signed int v27 (unsigned short);
signed int (*v28) (unsigned short) = v27;
extern signed short v29 (signed short);
extern signed short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v46 = 5;
unsigned int v45 = 1U;
signed char v44 = 1;

signed int v27 (unsigned short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = -2;
signed char v49 = 2;
unsigned int v48 = 3U;
trace++;
switch (trace)
{
case 3: 
return 3;
default: abort ();
}
}
}
}

void v23 (signed char v51, signed char v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 3U;
unsigned char v54 = 0;
unsigned char v53 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned short v56, signed char v57, signed char v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 2;
unsigned char v60 = 4;
signed int v59 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
signed int v64 = -1;
signed int v63 = -3;
unsigned char v62 = 4;
trace++;
switch (trace)
{
case 5: 
return 5U;
case 7: 
return 1U;
default: abort ();
}
}
}
}

signed short v11 (unsigned short v65, signed char v66, signed short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -4;
unsigned char v69 = 6;
unsigned int v68 = 3U;
trace++;
switch (trace)
{
case 9: 
return -3;
default: abort ();
}
}
}
}

unsigned int v7 (signed char v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -4;
signed short v73 = -2;
unsigned char v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
