#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed int, unsigned short, unsigned int);
static unsigned char (*v2) (signed int, unsigned short, unsigned int) = v1;
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern void v5 (void);
extern void (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern void v11 (unsigned short, unsigned int);
extern void (*v12) (unsigned short, unsigned int);
extern signed short v13 (unsigned char, signed int, signed char);
extern signed short (*v14) (unsigned char, signed int, signed char);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern signed short v17 (signed char, signed short, unsigned int);
extern signed short (*v18) (signed char, signed short, unsigned int);
unsigned char v19 (unsigned short, signed short, unsigned short);
unsigned char (*v20) (unsigned short, signed short, unsigned short) = v19;
void v21 (signed short);
void (*v22) (signed short) = v21;
unsigned int v23 (signed short, unsigned char);
unsigned int (*v24) (signed short, unsigned char) = v23;
extern unsigned short v27 (unsigned short);
extern unsigned short (*v28) (unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = -4;
unsigned short v31 = 0;

unsigned int v23 (signed short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 1;
unsigned short v37 = 0;
signed char v36 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 2;
unsigned int v41 = 3U;
unsigned int v40 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v43, signed short v44, unsigned short v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 1U;
unsigned short v47 = 4;
unsigned char v46 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
signed int v51 = -1;
unsigned char v50 = 1;
signed short v49 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed int v52, unsigned short v53, unsigned int v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = 1;
signed short v56 = -2;
unsigned char v55 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v58;
unsigned int v59;
v58 = v53 + 5;
v59 = v54 + 2U;
v11 (v58, v59);
}
break;
case 4: 
{
signed char v60;
signed short v61;
unsigned int v62;
signed short v63;
v60 = -4 - 2;
v61 = v56 + -2;
v62 = v54 - 2U;
v63 = v17 (v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 14: 
return 0;
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
signed int v66;
unsigned short v67;
unsigned int v68;
unsigned char v69;
v66 = v32 - v33;
v67 = v31 - 2;
v68 = 0U - 1U;
v69 = v1 (v66, v67, v68);
history[history_index++] = (int)v69;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
