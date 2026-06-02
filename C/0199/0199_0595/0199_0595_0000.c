#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed short);
extern unsigned char (*v2) (signed int, signed char, signed short);
signed char v3 (unsigned char, signed char, unsigned short, unsigned char);
signed char (*v4) (unsigned char, signed char, unsigned short, unsigned char) = v3;
extern signed int v5 (signed int, unsigned int, unsigned char, unsigned int);
extern signed int (*v6) (signed int, unsigned int, unsigned char, unsigned int);
extern signed short v7 (unsigned short, signed short, unsigned short, unsigned char);
extern signed short (*v8) (unsigned short, signed short, unsigned short, unsigned char);
void v9 (void);
void (*v10) (void) = v9;
extern unsigned int v11 (signed int, unsigned char, unsigned int, signed short);
extern unsigned int (*v12) (signed int, unsigned char, unsigned int, signed short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned short v19 (signed char, signed short, signed int);
extern unsigned short (*v20) (signed char, signed short, signed int);
void v21 (unsigned int);
void (*v22) (unsigned int) = v21;
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
static signed char v25 (unsigned char, unsigned char, signed int, unsigned short);
static signed char (*v26) (unsigned char, unsigned char, signed int, unsigned short) = v25;
extern signed char v27 (unsigned char, signed char);
extern signed char (*v28) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned int v32 = 0U;
signed int v31 = 2;

static signed char v25 (unsigned char v34, unsigned char v35, signed int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 0;
signed char v39 = 1;
signed char v38 = -1;
trace++;
switch (trace)
{
case 3: 
{
signed int v41;
unsigned int v42;
unsigned char v43;
unsigned int v44;
signed int v45;
v41 = v40 + -4;
v42 = 1U - 7U;
v43 = 3 + v35;
v44 = 5U + 6U;
v45 = v5 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 15: 
return v39;
default: abort ();
}
}
}
}

void v21 (unsigned int v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = -4;
unsigned int v48 = 6U;
signed char v47 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed int v52 = 1;
unsigned char v51 = 2;
unsigned char v50 = 5;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v53;
unsigned char v54;
signed int v55;
unsigned short v56;
signed char v57;
v53 = v51 - 4;
v54 = v51 - 6;
v55 = 1 - v52;
v56 = 6 - 5;
v57 = v25 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}

signed char v3 (unsigned char v58, signed char v59, unsigned short v60, unsigned char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 5;
signed int v63 = -4;
signed int v62 = 0;
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
signed int v67;
signed char v68;
signed short v69;
unsigned char v70;
v67 = 2 - v31;
v68 = -1 + 1;
v69 = -4 + v33;
v70 = v1 (v67, v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 17);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
