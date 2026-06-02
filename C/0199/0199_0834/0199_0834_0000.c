#include <stdio.h>
#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
static void v5 (signed short, unsigned int, unsigned short);
static void (*v6) (signed short, unsigned int, unsigned short) = v5;
static void v7 (signed char);
static void (*v8) (signed char) = v7;
static unsigned int v9 (unsigned int, unsigned int, unsigned char, signed char);
static unsigned int (*v10) (unsigned int, unsigned int, unsigned char, signed char) = v9;
extern unsigned int v11 (signed int, unsigned char, signed char, unsigned short);
extern unsigned int (*v12) (signed int, unsigned char, signed char, unsigned short);
extern unsigned short v13 (signed int, unsigned int, unsigned short);
extern unsigned short (*v14) (signed int, unsigned int, unsigned short);
extern unsigned char v15 (unsigned char, signed char);
extern unsigned char (*v16) (unsigned char, signed char);
extern unsigned short v17 (unsigned short, signed short, unsigned short, signed char);
extern unsigned short (*v18) (unsigned short, signed short, unsigned short, signed char);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed short v21 (signed int);
extern signed short (*v22) (signed int);
extern signed int v23 (signed short, unsigned short, unsigned int, signed int);
extern signed int (*v24) (signed short, unsigned short, unsigned int, signed int);
extern signed char v25 (unsigned short, unsigned char, signed char, signed int);
extern signed char (*v26) (unsigned short, unsigned char, signed char, signed int);
extern unsigned short v27 (signed char, signed int, unsigned char, signed int);
extern unsigned short (*v28) (signed char, signed int, unsigned char, signed int);
unsigned short v29 (signed int, unsigned char, signed char, unsigned int);
unsigned short (*v30) (signed int, unsigned char, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned int v32 = 7U;
signed char v31 = 0;

unsigned short v29 (signed int v34, unsigned char v35, signed char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 0;
unsigned short v39 = 5;
unsigned short v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
unsigned char v43 = 2;
unsigned short v42 = 3;
unsigned short v41 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v9 (unsigned int v44, unsigned int v45, unsigned char v46, signed char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned char v50 = 0;
signed short v49 = -4;
signed int v48 = -3;
trace++;
switch (trace)
{
case 5: 
return v44;
case 8: 
return v45;
default: abort ();
}
}
}
}

static void v7 (signed char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = -3;
unsigned short v53 = 2;
unsigned char v52 = 6;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

static void v5 (signed short v55, unsigned int v56, unsigned short v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 4;
unsigned char v59 = 0;
signed char v58 = -4;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v61;
unsigned int v62;
unsigned char v63;
signed char v64;
unsigned int v65;
v61 = 3U + 4U;
v62 = 5U - v56;
v63 = 3 + v59;
v64 = v58 - -4;
v65 = v9 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 9: 
return;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
signed int v68 = 2;
unsigned int v67 = 7U;
unsigned int v66 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed int v69;
signed short v70;
v69 = v68 - v68;
v70 = v21 (v69);
history[history_index++] = (int)v70;
}
break;
case 2: 
{
signed int v71;
unsigned int v72;
unsigned short v73;
unsigned short v74;
v71 = v68 - 2;
v72 = 3U - v67;
v73 = 7 - 7;
v74 = v13 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 4: 
{
unsigned int v75;
unsigned int v76;
unsigned char v77;
signed char v78;
unsigned int v79;
v75 = v67 - 2U;
v76 = v67 + v66;
v77 = 2 + 4;
v78 = -1 + -4;
v79 = v9 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 6: 
{
signed short v80;
unsigned int v81;
unsigned short v82;
v80 = -1 + 2;
v81 = v67 + v67;
v82 = 1 + 4;
v5 (v80, v81, v82);
}
break;
case 10: 
{
signed char v83;
v83 = 3 + -3;
v7 (v83);
}
break;
case 12: 
return 1;
case 14: 
return 5;
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
unsigned short v86;
v86 = v1 ();
history[history_index++] = (int)v86;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
