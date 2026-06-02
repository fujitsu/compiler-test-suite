#include <stdlib.h>
signed int v1 (unsigned int, signed char);
signed int (*v2) (unsigned int, signed char) = v1;
extern signed char v3 (unsigned int, signed short, unsigned char, signed char);
extern signed char (*v4) (unsigned int, signed short, unsigned char, signed char);
static unsigned char v5 (signed short);
static unsigned char (*v6) (signed short) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed char v9 (unsigned short, unsigned int, signed char);
extern signed char (*v10) (unsigned short, unsigned int, signed char);
signed int v11 (unsigned int);
signed int (*v12) (unsigned int) = v11;
extern signed char v13 (unsigned short, signed char);
extern signed char (*v14) (unsigned short, signed char);
unsigned char v15 (signed int, unsigned short);
unsigned char (*v16) (signed int, unsigned short) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned char v19 (signed short, signed int, signed short);
unsigned char (*v20) (signed short, signed int, signed short) = v19;
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
signed short v23 (unsigned int, signed int);
signed short (*v24) (unsigned int, signed int) = v23;
extern unsigned int v25 (unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned int, unsigned int);
extern signed int v27 (unsigned char, unsigned char, signed short);
extern signed int (*v28) (unsigned char, unsigned char, signed short);
extern unsigned char v29 (unsigned int, signed char);
extern unsigned char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v48 = -1;
unsigned short v47 = 4;
unsigned short v46 = 7;

signed short v23 (unsigned int v49, signed int v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 2U;
unsigned short v52 = 2;
unsigned int v51 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed short v54, signed int v55, signed short v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = -2;
signed short v58 = -3;
signed char v57 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v60, unsigned short v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 0;
unsigned short v63 = 4;
signed int v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 0;
unsigned char v67 = 3;
unsigned int v66 = 5U;
trace++;
switch (trace)
{
case 6: 
return -4;
case 8: 
return -2;
default: abort ();
}
}
}
}

static unsigned char v5 (signed short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = -4;
signed char v71 = -1;
unsigned short v70 = 5;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v73;
unsigned int v74;
signed char v75;
signed char v76;
v73 = 7 - 5;
v74 = 7U + 1U;
v75 = 1 + v71;
v76 = v9 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 4: 
{
unsigned char v77;
v77 = v7 ();
history[history_index++] = (int)v77;
}
break;
case 10: 
{
signed int v78;
v78 = v17 ();
history[history_index++] = (int)v78;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

signed int v1 (unsigned int v79, signed char v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = 0;
signed char v82 = -4;
unsigned char v81 = 3;
trace++;
switch (trace)
{
case 0: 
return -3;
case 1: 
{
signed short v84;
unsigned char v85;
v84 = 0 - -3;
v85 = v5 (v84);
history[history_index++] = (int)v85;
}
break;
case 13: 
return v83;
default: abort ();
}
}
}
}
