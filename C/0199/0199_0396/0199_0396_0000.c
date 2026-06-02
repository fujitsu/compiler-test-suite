#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned int, signed int, unsigned short);
static void (*v2) (unsigned int, signed int, unsigned short) = v1;
extern signed int v3 (unsigned int);
extern signed int (*v4) (unsigned int);
extern unsigned int v5 (signed short, signed int, unsigned short);
extern unsigned int (*v6) (signed short, signed int, unsigned short);
extern unsigned int v7 (signed char, unsigned int);
extern unsigned int (*v8) (signed char, unsigned int);
extern signed short v9 (signed short, signed int, signed char, unsigned short);
extern signed short (*v10) (signed short, signed int, signed char, unsigned short);
signed short v11 (unsigned int, signed short);
signed short (*v12) (unsigned int, signed short) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (unsigned short, signed short);
extern signed short (*v16) (unsigned short, signed short);
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
static signed short v21 (unsigned short, signed short, unsigned short, unsigned short);
static signed short (*v22) (unsigned short, signed short, unsigned short, unsigned short) = v21;
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed char v32 = 3;
signed char v31 = 2;

signed short v23 (void)
{
{
for (;;) {
unsigned short v36 = 5;
signed short v35 = 3;
signed char v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v21 (unsigned short v37, signed short v38, unsigned short v39, unsigned short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 6;
signed char v42 = -4;
signed char v41 = -4;
trace++;
switch (trace)
{
case 7: 
{
signed char v44;
signed int v45;
v44 = -1 - -3;
v45 = v25 (v44);
history[history_index++] = (int)v45;
}
break;
case 9: 
{
unsigned char v46;
v46 = v19 ();
history[history_index++] = (int)v46;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v47, signed short v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 3U;
signed short v50 = -1;
signed int v49 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (unsigned int v52, signed int v53, unsigned short v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = 1;
signed int v56 = -4;
signed char v55 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v58;
signed int v59;
v58 = -3 - 3;
v59 = v25 (v58);
history[history_index++] = (int)v59;
}
break;
case 2: 
{
signed char v60;
signed int v61;
v60 = -4 + -3;
v61 = v25 (v60);
history[history_index++] = (int)v61;
}
break;
case 4: 
{
unsigned short v62;
v62 = v13 ();
history[history_index++] = (int)v62;
}
break;
case 6: 
{
unsigned short v63;
signed short v64;
unsigned short v65;
unsigned short v66;
signed short v67;
v63 = 0 - 3;
v64 = -1 - v57;
v65 = 5 + 6;
v66 = v54 - 1;
v67 = v21 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 14: 
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
unsigned int v70;
signed int v71;
unsigned short v72;
v70 = 3U + 4U;
v71 = 1 - -2;
v72 = 2 + 0;
v1 (v70, v71, v72);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
