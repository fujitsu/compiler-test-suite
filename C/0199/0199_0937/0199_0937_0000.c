#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (void);
static unsigned short (*v2) (void) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (signed int);
extern signed int (*v6) (signed int);
extern void v7 (signed int, unsigned short, signed char);
extern void (*v8) (signed int, unsigned short, signed char);
static unsigned char v9 (unsigned char, unsigned short, unsigned short, unsigned short);
static unsigned char (*v10) (unsigned char, unsigned short, unsigned short, unsigned short) = v9;
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
unsigned char v13 (unsigned int, signed char);
unsigned char (*v14) (unsigned int, signed char) = v13;
extern signed int v15 (signed short, signed int, signed int);
extern signed int (*v16) (signed short, signed int, signed int);
extern signed char v17 (signed int, unsigned int);
extern signed char (*v18) (signed int, unsigned int);
extern unsigned short v19 (unsigned int, signed char);
extern unsigned short (*v20) (unsigned int, signed char);
signed short v21 (unsigned int, unsigned char, signed char, signed short);
signed short (*v22) (unsigned int, unsigned char, signed char, signed short) = v21;
extern void v23 (signed char, signed short, unsigned short, signed char);
extern void (*v24) (signed char, signed short, unsigned short, signed char);
extern unsigned char v25 (signed char, signed int);
extern unsigned char (*v26) (signed char, signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (signed int, unsigned int, signed int);
extern unsigned char (*v30) (signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed short v32 = -2;
signed short v31 = 1;

signed short v21 (unsigned int v34, unsigned char v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 2;
signed short v39 = -1;
signed int v38 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v41, signed char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = 3;
signed short v44 = 1;
unsigned char v43 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v9 (unsigned char v46, unsigned short v47, unsigned short v48, unsigned short v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 3;
unsigned char v51 = 0;
unsigned char v50 = 2;
trace++;
switch (trace)
{
case 5: 
{
signed int v53;
unsigned int v54;
signed char v55;
v53 = 3 + -1;
v54 = 7U - 3U;
v55 = v17 (v53, v54);
history[history_index++] = (int)v55;
}
break;
case 7: 
{
signed int v56;
unsigned int v57;
signed char v58;
v56 = 2 - 0;
v57 = 3U + 5U;
v58 = v17 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 9: 
return 6;
default: abort ();
}
}
}
}

static unsigned short v1 (void)
{
{
for (;;) {
signed short v61 = 0;
signed int v60 = -3;
unsigned short v59 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v62;
signed int v63;
v62 = 2 - v60;
v63 = v5 (v62);
history[history_index++] = (int)v63;
}
break;
case 2: 
{
signed int v64;
unsigned int v65;
signed int v66;
unsigned char v67;
v64 = -4 + -3;
v65 = 6U + 4U;
v66 = 3 - 0;
v67 = v29 (v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 4: 
{
unsigned char v68;
unsigned short v69;
unsigned short v70;
unsigned short v71;
unsigned char v72;
v68 = 7 - 3;
v69 = v59 + 7;
v70 = 1 + v59;
v71 = v59 + 1;
v72 = v9 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 10: 
{
signed int v73;
unsigned short v74;
signed char v75;
v73 = 0 + v60;
v74 = v59 + v59;
v75 = -3 - 0;
v7 (v73, v74, v75);
}
break;
case 12: 
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
unsigned short v78;
v78 = v1 ();
history[history_index++] = (int)v78;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
