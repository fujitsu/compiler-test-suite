#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed char, signed int, unsigned int);
static signed int (*v2) (signed char, signed int, unsigned int) = v1;
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (signed int, unsigned int);
extern signed char (*v6) (signed int, unsigned int);
void v7 (unsigned short, signed short);
void (*v8) (unsigned short, signed short) = v7;
extern unsigned short v9 (unsigned short, signed int);
extern unsigned short (*v10) (unsigned short, signed int);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern signed char v13 (signed int, signed short);
extern signed char (*v14) (signed int, signed short);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern signed short v17 (unsigned char, unsigned int, unsigned int, signed char);
extern signed short (*v18) (unsigned char, unsigned int, unsigned int, signed char);
extern signed short v19 (signed int, signed char, unsigned short, signed char);
extern signed short (*v20) (signed int, signed char, unsigned short, signed char);
signed int v21 (unsigned int, unsigned short);
signed int (*v22) (unsigned int, unsigned short) = v21;
unsigned short v23 (unsigned int, unsigned int, signed char, unsigned int);
unsigned short (*v24) (unsigned int, unsigned int, signed char, unsigned int) = v23;
signed int v25 (unsigned char, signed char, signed short, signed char);
signed int (*v26) (unsigned char, signed char, signed short, signed char) = v25;
extern void v27 (unsigned int, unsigned int, signed char, unsigned int);
extern void (*v28) (unsigned int, unsigned int, signed char, unsigned int);
static signed char v29 (void);
static signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
unsigned char v32 = 5;
signed char v31 = -2;

static signed char v29 (void)
{
{
for (;;) {
unsigned char v36 = 1;
signed short v35 = -1;
signed short v34 = -1;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

signed int v25 (unsigned char v37, signed char v38, signed short v39, signed char v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = -1;
signed char v42 = 0;
signed short v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned int v44, unsigned int v45, signed char v46, unsigned int v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 6U;
unsigned int v49 = 7U;
unsigned char v48 = 7;
trace++;
switch (trace)
{
case 2: 
return 6;
case 4: 
{
signed char v51;
v51 = v29 ();
history[history_index++] = (int)v51;
}
break;
case 6: 
return 2;
default: abort ();
}
}
}
}

signed int v21 (unsigned int v52, unsigned short v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = -3;
unsigned int v55 = 6U;
unsigned char v54 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed int v59 = -2;
unsigned int v58 = 5U;
unsigned short v57 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v60, signed short v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 3U;
signed short v63 = -3;
unsigned short v62 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed char v65, signed int v66, unsigned int v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 6;
unsigned int v69 = 4U;
signed int v68 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v71;
signed char v72;
unsigned short v73;
signed char v74;
signed short v75;
v71 = -4 + v66;
v72 = -3 + 3;
v73 = 0 + v70;
v74 = v65 + -1;
v75 = v19 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 8: 
{
signed int v76;
unsigned int v77;
signed char v78;
v76 = v66 + 1;
v77 = 2U - v67;
v78 = v5 (v76, v77);
history[history_index++] = (int)v78;
}
break;
case 10: 
{
signed int v79;
unsigned int v80;
signed char v81;
v79 = v66 - -1;
v80 = v69 + 3U;
v81 = v5 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 12: 
return v66;
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
signed char v84;
signed int v85;
unsigned int v86;
signed int v87;
v84 = 1 + -1;
v85 = 1 + -3;
v86 = 4U - 6U;
v87 = v1 (v84, v85, v86);
history[history_index++] = (int)v87;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
