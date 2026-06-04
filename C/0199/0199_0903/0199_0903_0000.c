#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
extern unsigned int v3 (unsigned int, signed int, signed short);
extern unsigned int (*v4) (unsigned int, signed int, signed short);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
signed short v9 (signed short, signed char, signed short, unsigned int);
signed short (*v10) (signed short, signed char, signed short, unsigned int) = v9;
extern signed short v11 (signed char, unsigned char, signed int, signed int);
extern signed short (*v12) (signed char, unsigned char, signed int, signed int);
static unsigned short v13 (signed char);
static unsigned short (*v14) (signed char) = v13;
signed short v15 (unsigned char, unsigned int, signed char);
signed short (*v16) (unsigned char, unsigned int, signed char) = v15;
extern unsigned short v17 (signed short, unsigned int);
extern unsigned short (*v18) (signed short, unsigned int);
unsigned short v19 (signed short);
unsigned short (*v20) (signed short) = v19;
extern unsigned short v21 (signed short);
extern unsigned short (*v22) (signed short);
extern signed int v23 (signed short, signed short);
extern signed int (*v24) (signed short, signed short);
extern unsigned char v25 (signed char);
extern unsigned char (*v26) (signed char);
signed int v27 (unsigned int, signed char, signed short);
signed int (*v28) (unsigned int, signed char, signed short) = v27;
signed char v29 (unsigned int, signed int);
signed char (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed int v32 = 0;
unsigned short v31 = 6;

signed char v29 (unsigned int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 7;
signed int v37 = 0;
unsigned int v36 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (unsigned int v39, signed char v40, signed short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = -4;
signed short v43 = -1;
signed short v42 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed short v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned char v48 = 5;
unsigned char v47 = 2;
signed int v46 = 1;
trace++;
switch (trace)
{
case 3: 
return 5;
default: abort ();
}
}
}
}

signed short v15 (unsigned char v49, unsigned int v50, signed char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 5;
unsigned char v53 = 2;
signed int v52 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v13 (signed char v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = 2;
signed char v57 = 1;
signed char v56 = -3;
trace++;
switch (trace)
{
case 6: 
return 3;
case 8: 
return 3;
case 10: 
{
signed short v59;
unsigned short v60;
v59 = 2 - 3;
v60 = v21 (v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

signed short v9 (signed short v61, signed char v62, signed short v63, unsigned int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = -2;
unsigned int v66 = 6U;
unsigned char v65 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed short v68;
unsigned int v69;
unsigned short v70;
v68 = v67 + v61;
v69 = 1U - v64;
v70 = v17 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 5: 
{
signed char v71;
unsigned short v72;
v71 = v62 + -3;
v72 = v13 (v71);
history[history_index++] = (int)v72;
}
break;
case 7: 
{
signed char v73;
unsigned short v74;
v73 = -3 - -2;
v74 = v13 (v73);
history[history_index++] = (int)v74;
}
break;
case 9: 
{
signed char v75;
unsigned short v76;
v75 = 2 - 1;
v76 = v13 (v75);
history[history_index++] = (int)v76;
}
break;
case 13: 
return v63;
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
signed char v79 = -1;
signed char v78 = -3;
unsigned int v77 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
unsigned short v82 = 3;
signed short v81 = -2;
signed int v80 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v85;
unsigned short v86;
unsigned char v87;
v85 = 2U - 3U;
v86 = 4 - 4;
v87 = v1 (v85, v86);
history[history_index++] = (int)v87;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
