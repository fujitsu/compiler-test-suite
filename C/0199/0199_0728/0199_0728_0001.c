#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
signed short v3 (signed short, unsigned char);
signed short (*v4) (signed short, unsigned char) = v3;
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern unsigned char v7 (signed char, signed char, unsigned char);
extern unsigned char (*v8) (signed char, signed char, unsigned char);
extern unsigned char v9 (unsigned char, signed short);
extern unsigned char (*v10) (unsigned char, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
unsigned int v15 (unsigned char);
unsigned int (*v16) (unsigned char) = v15;
void v17 (unsigned int);
void (*v18) (unsigned int) = v17;
static unsigned short v19 (unsigned short, signed short);
static unsigned short (*v20) (unsigned short, signed short) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (unsigned short, signed short);
extern signed char (*v24) (unsigned short, signed short);
extern signed int v25 (signed int, signed char);
extern signed int (*v26) (signed int, signed char);
extern unsigned int v27 (unsigned char, signed char, signed short, signed char);
extern unsigned int (*v28) (unsigned char, signed char, signed short, signed char);
unsigned int v29 (signed int, signed char);
unsigned int (*v30) (signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v52 = 4U;
unsigned char v51 = 4;
signed short v50 = -1;

unsigned int v29 (signed int v53, signed char v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 6;
unsigned int v56 = 5U;
signed char v55 = 1;
trace++;
switch (trace)
{
case 2: 
return 3U;
default: abort ();
}
}
}
}

static unsigned short v19 (unsigned short v58, signed short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 1;
signed short v61 = 2;
unsigned int v60 = 1U;
trace++;
switch (trace)
{
case 10: 
return 7;
default: abort ();
}
}
}
}

void v17 (unsigned int v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 0;
signed short v65 = -1;
signed char v64 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = 0;
unsigned short v69 = 6;
unsigned char v68 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v71, unsigned char v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = -2;
unsigned int v74 = 7U;
unsigned char v73 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v76;
signed char v77;
signed short v78;
signed char v79;
unsigned int v80;
v76 = v72 - v72;
v77 = -4 - v75;
v78 = v71 - -2;
v79 = -4 - v75;
v80 = v27 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 7: 
{
unsigned char v81;
signed char v82;
signed short v83;
signed char v84;
unsigned int v85;
v81 = v72 - 5;
v82 = v75 + v75;
v83 = -2 - v71;
v84 = v75 - v75;
v85 = v27 (v81, v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 9: 
{
unsigned short v86;
signed short v87;
unsigned short v88;
v86 = 4 + 5;
v87 = v71 + v71;
v88 = v19 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}
