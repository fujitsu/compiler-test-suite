#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed int v3 (unsigned char, unsigned char);
extern signed int (*v4) (unsigned char, unsigned char);
void v5 (unsigned char);
void (*v6) (unsigned char) = v5;
extern unsigned char v7 (signed int, signed int);
extern unsigned char (*v8) (signed int, signed int);
extern signed int v9 (signed int, unsigned int, signed int);
extern signed int (*v10) (signed int, unsigned int, signed int);
extern signed char v11 (signed int, signed int, signed char, unsigned short);
extern signed char (*v12) (signed int, signed int, signed char, unsigned short);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned char v15 (unsigned short, unsigned char, signed int, signed char);
extern unsigned char (*v16) (unsigned short, unsigned char, signed int, signed char);
static signed int v17 (unsigned int);
static signed int (*v18) (unsigned int) = v17;
signed char v19 (signed short);
signed char (*v20) (signed short) = v19;
extern signed char v21 (signed short, signed int, unsigned short);
extern signed char (*v22) (signed short, signed int, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (signed int, unsigned int);
extern signed int (*v26) (signed int, unsigned int);
extern signed char v27 (unsigned int, signed int, signed char, unsigned short);
extern signed char (*v28) (unsigned int, signed int, signed char, unsigned short);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v47 = 7;
signed int v46 = 3;
signed char v45 = 0;

unsigned int v29 (void)
{
{
for (;;) {
signed short v50 = 2;
signed char v49 = -4;
unsigned int v48 = 2U;
trace++;
switch (trace)
{
case 8: 
return 7U;
default: abort ();
}
}
}
}

signed char v19 (signed short v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed int v54 = -2;
signed short v53 = -4;
unsigned short v52 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v17 (unsigned int v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -4;
signed int v57 = -3;
signed short v56 = 3;
trace++;
switch (trace)
{
case 1: 
return -4;
case 3: 
return 3;
default: abort ();
}
}
}
}

void v5 (unsigned char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 0;
unsigned short v61 = 5;
signed int v60 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed int v65 = -4;
signed short v64 = 1;
unsigned short v63 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v66;
signed int v67;
v66 = 1U + 1U;
v67 = v17 (v66);
history[history_index++] = (int)v67;
}
break;
case 2: 
{
unsigned int v68;
signed int v69;
v68 = 3U + 2U;
v69 = v17 (v68);
history[history_index++] = (int)v69;
}
break;
case 4: 
{
signed int v70;
unsigned int v71;
signed int v72;
v70 = v65 + v65;
v71 = 1U - 2U;
v72 = v25 (v70, v71);
history[history_index++] = (int)v72;
}
break;
case 6: 
{
signed short v73;
signed int v74;
unsigned short v75;
signed char v76;
v73 = -1 + 3;
v74 = -2 + v65;
v75 = 2 - v63;
v76 = v21 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
