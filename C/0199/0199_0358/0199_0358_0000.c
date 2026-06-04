#include <stdio.h>
#include <stdlib.h>
static void v1 (signed char, unsigned short);
static void (*v2) (signed char, unsigned short) = v1;
signed short v3 (unsigned short, unsigned int);
signed short (*v4) (unsigned short, unsigned int) = v3;
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
static signed int v7 (unsigned char, unsigned short, signed char, unsigned int);
static signed int (*v8) (unsigned char, unsigned short, signed char, unsigned int) = v7;
extern unsigned char v9 (unsigned char, signed short);
extern unsigned char (*v10) (unsigned char, signed short);
extern signed int v11 (signed char, signed char, unsigned short, signed char);
extern signed int (*v12) (signed char, signed char, unsigned short, signed char);
extern void v13 (unsigned char, unsigned short, unsigned int, signed char);
extern void (*v14) (unsigned char, unsigned short, unsigned int, signed char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed int, signed int, unsigned int);
extern unsigned int (*v18) (signed int, signed int, unsigned int);
unsigned int v19 (unsigned int);
unsigned int (*v20) (unsigned int) = v19;
static unsigned char v21 (unsigned short, signed short);
static unsigned char (*v22) (unsigned short, signed short) = v21;
signed int v23 (signed char, signed int, unsigned int, signed int);
signed int (*v24) (signed char, signed int, unsigned int, signed int) = v23;
extern signed char v25 (unsigned int, signed int, signed int, signed short);
extern signed char (*v26) (unsigned int, signed int, signed int, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
unsigned char v32 = 0;
signed char v31 = 3;

signed int v23 (signed char v34, signed int v35, unsigned int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 0;
unsigned char v39 = 4;
signed char v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v21 (unsigned short v41, signed short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 1;
unsigned short v44 = 1;
unsigned int v43 = 1U;
trace++;
switch (trace)
{
case 5: 
return 3;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 4;
signed int v48 = 2;
unsigned char v47 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v7 (unsigned char v50, unsigned short v51, signed char v52, unsigned int v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = -1;
unsigned short v55 = 7;
unsigned char v54 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v57;
signed short v58;
unsigned char v59;
v57 = v54 - 1;
v58 = 1 - v56;
v59 = v9 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 9: 
{
unsigned int v60;
unsigned short v61;
v60 = v53 - 4U;
v61 = v29 (v60);
history[history_index++] = (int)v61;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed short v3 (unsigned short v62, unsigned int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 4;
signed int v65 = -4;
unsigned int v64 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (signed char v67, unsigned short v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 5;
signed int v70 = 2;
unsigned int v69 = 3U;
trace++;
switch (trace)
{
case 0: 
{
signed int v72;
unsigned short v73;
v72 = -2 + -2;
v73 = v5 (v72);
history[history_index++] = (int)v73;
}
break;
case 2: 
{
signed short v74;
v74 = v27 ();
history[history_index++] = (int)v74;
}
break;
case 4: 
{
unsigned short v75;
signed short v76;
unsigned char v77;
v75 = v68 - v68;
v76 = 1 - 3;
v77 = v21 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 6: 
{
unsigned char v78;
unsigned short v79;
signed char v80;
unsigned int v81;
signed int v82;
v78 = v71 + v71;
v79 = 3 - 2;
v80 = 2 - -3;
v81 = 0U - 2U;
v82 = v7 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 12: 
return;
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
signed char v85;
unsigned short v86;
v85 = v33 - v31;
v86 = 7 - 6;
v1 (v85, v86);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
