#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed char, signed short, signed char);
static signed short (*v2) (signed char, signed short, signed char) = v1;
extern void v3 (signed int);
extern void (*v4) (signed int);
extern void v5 (signed int, unsigned int, signed char, unsigned char);
extern void (*v6) (signed int, unsigned int, signed char, unsigned char);
extern signed int v7 (signed char, signed short, signed int, signed char);
extern signed int (*v8) (signed char, signed short, signed int, signed char);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
static unsigned short v11 (signed short, unsigned short, unsigned int, signed short);
static unsigned short (*v12) (signed short, unsigned short, unsigned int, signed short) = v11;
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
extern unsigned short v15 (signed int, signed char);
extern unsigned short (*v16) (signed int, signed char);
extern signed int v17 (unsigned int, signed short);
extern signed int (*v18) (unsigned int, signed short);
signed int v19 (unsigned char, signed int, unsigned int, unsigned int);
signed int (*v20) (unsigned char, signed int, unsigned int, unsigned int) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned short, signed short);
extern unsigned int (*v24) (unsigned short, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
void v27 (void);
void (*v28) (void) = v27;
void v29 (unsigned short, signed short, signed short, unsigned char);
void (*v30) (unsigned short, signed short, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
signed char v32 = 1;
signed short v31 = 1;

void v29 (unsigned short v34, signed short v35, signed short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -3;
signed short v39 = -4;
signed short v38 = 0;
trace++;
switch (trace)
{
case 2: 
return;
case 5: 
return;
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

void v27 (void)
{
{
for (;;) {
unsigned char v43 = 2;
signed short v42 = -1;
unsigned short v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v44, signed int v45, unsigned int v46, unsigned int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = 2;
unsigned short v49 = 7;
unsigned short v48 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v11 (signed short v51, unsigned short v52, unsigned int v53, signed short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 1;
signed char v56 = -2;
signed char v55 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v58;
signed short v59;
signed short v60;
unsigned char v61;
v58 = 0 - 6;
v59 = v54 - -3;
v60 = -4 - v51;
v61 = 3 - v57;
v29 (v58, v59, v60, v61);
}
break;
case 3: 
{
unsigned short v62;
signed short v63;
signed char v64;
v62 = 1 + 1;
v63 = v51 - v54;
v64 = v13 (v62, v63);
history[history_index++] = (int)v64;
}
break;
case 13: 
return v52;
default: abort ();
}
}
}
}

static signed short v1 (signed char v65, signed short v66, signed char v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -3;
unsigned char v69 = 0;
unsigned int v68 = 3U;
trace++;
switch (trace)
{
case 0: 
{
signed short v71;
unsigned short v72;
unsigned int v73;
signed short v74;
unsigned short v75;
v71 = v66 + -2;
v72 = 5 + 4;
v73 = 6U - v68;
v74 = v66 - v66;
v75 = v11 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 14: 
return -3;
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
signed char v78;
signed short v79;
signed char v80;
signed short v81;
v78 = -4 + v32;
v79 = v33 - v31;
v80 = v32 - -2;
v81 = v1 (v78, v79, v80);
history[history_index++] = (int)v81;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
