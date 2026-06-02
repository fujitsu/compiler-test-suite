#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned int, unsigned short, signed short);
static signed short (*v2) (unsigned int, unsigned short, signed short) = v1;
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned int, unsigned short, signed short, signed char);
extern signed char (*v6) (unsigned int, unsigned short, signed short, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (unsigned char, unsigned char, unsigned char, signed short);
extern unsigned short (*v10) (unsigned char, unsigned char, unsigned char, signed short);
extern signed char v11 (signed char, unsigned char, unsigned char);
extern signed char (*v12) (signed char, unsigned char, unsigned char);
static unsigned char v13 (signed char);
static unsigned char (*v14) (signed char) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed short, unsigned short, unsigned int, unsigned short);
extern unsigned int (*v18) (signed short, unsigned short, unsigned int, unsigned short);
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
static unsigned short v21 (void);
static unsigned short (*v22) (void) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern signed short v25 (unsigned short, unsigned int, signed char);
extern signed short (*v26) (unsigned short, unsigned int, signed char);
extern signed short v27 (signed short, signed short, unsigned short);
extern signed short (*v28) (signed short, signed short, unsigned short);
signed char v29 (signed int, signed int, unsigned int, unsigned int);
signed char (*v30) (signed int, signed int, unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned char v32 = 4;
unsigned char v31 = 5;

signed char v29 (signed int v34, signed int v35, unsigned int v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 3U;
unsigned int v39 = 7U;
unsigned char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v21 (void)
{
{
for (;;) {
unsigned int v43 = 2U;
signed int v42 = 0;
signed short v41 = -4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v44;
unsigned char v45;
unsigned char v46;
signed short v47;
unsigned short v48;
v44 = 4 - 2;
v45 = 7 - 2;
v46 = 7 - 0;
v47 = 1 + -4;
v48 = v9 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 6: 
{
unsigned char v49;
unsigned char v50;
unsigned char v51;
signed short v52;
unsigned short v53;
v49 = 5 + 4;
v50 = 7 + 7;
v51 = 4 - 6;
v52 = v41 + v41;
v53 = v9 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 8: 
{
unsigned char v54;
unsigned char v55;
unsigned char v56;
signed short v57;
unsigned short v58;
v54 = 1 + 4;
v55 = 0 + 1;
v56 = 5 - 3;
v57 = v41 + v41;
v58 = v9 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 10: 
{
unsigned char v59;
unsigned char v60;
unsigned char v61;
signed short v62;
unsigned short v63;
v59 = 6 - 1;
v60 = 6 - 5;
v61 = 3 - 4;
v62 = v41 - v41;
v63 = v9 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

static unsigned char v13 (signed char v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 7;
unsigned char v66 = 0;
unsigned char v65 = 4;
trace++;
switch (trace)
{
case 1: 
{
signed short v68;
signed short v69;
unsigned short v70;
signed short v71;
v68 = 3 + 2;
v69 = 1 + -3;
v70 = 4 + 6;
v71 = v27 (v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 3: 
{
unsigned short v72;
v72 = v21 ();
history[history_index++] = (int)v72;
}
break;
case 13: 
return v65;
default: abort ();
}
}
}
}

static signed short v1 (unsigned int v73, unsigned short v74, signed short v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = -3;
unsigned int v77 = 3U;
unsigned char v76 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed char v79;
unsigned char v80;
v79 = -4 - -4;
v80 = v13 (v79);
history[history_index++] = (int)v80;
}
break;
case 14: 
return v78;
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
unsigned int v83;
unsigned short v84;
signed short v85;
signed short v86;
v83 = 1U - 0U;
v84 = 2 - 3;
v85 = 2 + 0;
v86 = v1 (v83, v84, v85);
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
